let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ipopt" or (pkgConfDepError "ipopt"))
          ] ++ (pkgs.lib).optional (flags.nlopt) (pkgconfPkgs."nlopt" or (pkgConfDepError "nlopt"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "ipopt-hs_Tests" = {
          depends = (pkgs.lib).optionals (flags.build_examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (buildDepError "ipopt-hs"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."Rlang-QQ" or (buildDepError "Rlang-QQ"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."splines" or (buildDepError "splines"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."linear" or (buildDepError "linear"))
            ];
          buildable = if !flags.build_examples then false else true;
          };
        };
      };
    }