{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build_examples = false; nlopt = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ipopt-hs"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "a haskell binding to the nonlinear programming solver ipopt\n<http://projects.coin-or.org/Ipopt>\n\n[@installation@]\nneeds ipopt installed: For example if you have a\n`/usr/include/coin/IpStdCInterface.h` from your ipopt installation,\nuse:\n\n> cabal install ipopt-hs --extra-include-dirs=/usr/include/coin\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell. There is some\noverhead <http://code.haskell.org/~aavogt/ipopt-hs/examples/bench.html>\nbut at least on the small 4-variable constrained optimization\nproblem.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable.\n\n* sparseness of derivatives isn't used\n\n* no binding to SetIntermediateCallback";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ipopt" or ((hsPkgs.pkgs-errors).pkgConfDepError "ipopt"))
          ] ++ (pkgs.lib).optional (flags.nlopt) (pkgconfPkgs."nlopt" or ((hsPkgs.pkgs-errors).pkgConfDepError "nlopt"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "ipopt-hs_Tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ipopt-hs" or ((hsPkgs.pkgs-errors).buildDepError "ipopt-hs"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."Rlang-QQ" or ((hsPkgs.pkgs-errors).buildDepError "Rlang-QQ"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."splines" or ((hsPkgs.pkgs-errors).buildDepError "splines"))
            (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."optimization" or ((hsPkgs.pkgs-errors).buildDepError "optimization"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            ];
          buildable = if !flags.build_examples then false else true;
          };
        };
      };
    }