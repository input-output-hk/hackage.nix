{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { build_examples = false; nlopt = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ipopt-hs"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt and nlopt including automatic differentiation";
      description = "a haskell binding to the nonlinear programming solver\n<http://projects.coin-or.org/Ipopt Ipopt>. Bindings to\n<http://ab-initio.mit.edu/wiki/index.php/NLopt NLopt> are\nalso included.\n\n[@installation@]\nneeds the c library ipopt installed. Also by default a binding to\nnlopt is included. Nlopt by default does not include shared libraries,\nwhich seems to be needed to run things from ghci (ie. you need to\n@./configure --enable-shared@ when building nlopt).\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell. There is some\noverhead <http://code.haskell.org/~aavogt/ipopt-hs/examples/bench.html>\nbut perhaps it is negligible for your uses.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable. Note that\nthere is a \"Numeric.AD.Mode.Forward.Double\" but as yet none\nfor Vectors of Double\n\n* sparseness of derivatives isn't used\n\n* no binding to sensitivity parts as-implemented in ipopt";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        pkgconfig = [
          (pkgconfPkgs."ipopt" or (errorHandler.pkgConfDepError "ipopt"))
        ] ++ pkgs.lib.optional (flags.nlopt) (pkgconfPkgs."nlopt" or (errorHandler.pkgConfDepError "nlopt"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "ipopt-hs_Tests" = {
          depends = pkgs.lib.optionals (flags.build_examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (errorHandler.buildDepError "ipopt-hs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."Rlang-QQ" or (errorHandler.buildDepError "Rlang-QQ"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."splines" or (errorHandler.buildDepError "splines"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
          buildable = if !flags.build_examples then false else true;
        };
      };
    };
  }