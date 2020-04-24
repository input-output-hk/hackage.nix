{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; buildbenchmark = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "adp-multi"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Maik Riechert, 2012";
      maintainer = "Maik Riechert";
      author = "Maik Riechert";
      homepage = "http://adp-multi.ruhoh.com";
      url = "";
      synopsis = "ADP for multiple context-free languages";
      description = "adp-multi is an implementation of Algebraic Dynamic Programming\nfor multiple context-free languages.\nIt is a library based on the original Haskell implementation\nand can be considered an unoptimized prototype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."htrace" or ((hsPkgs.pkgs-errors).buildDepError "htrace"))
          ];
        buildable = true;
        };
      exes = {
        "adp-multi-benchmarks" = {
          depends = (pkgs.lib).optionals (!(!flags.buildbenchmark)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."htrace" or ((hsPkgs.pkgs-errors).buildDepError "htrace"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."Nussinov78" or ((hsPkgs.pkgs-errors).buildDepError "Nussinov78"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = if !flags.buildbenchmark then false else true;
          };
        "adp-test" = {
          depends = (pkgs.lib).optionals (!(!flags.buildtests)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."htrace" or ((hsPkgs.pkgs-errors).buildDepError "htrace"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            ];
          buildable = if !flags.buildtests then false else true;
          };
        };
      tests = {
        "MainTestSuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."htrace" or ((hsPkgs.pkgs-errors).buildDepError "htrace"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }