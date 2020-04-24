{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Random123"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bogdan Opanchuk <bogdan@opanchuk.net>";
      author = "Bogdan Opanchuk <bogdan@opanchuk.net>";
      homepage = "http://github.com/Manticore/haskell-random123";
      url = "";
      synopsis = "Haskell port of Random123 library";
      description = "This is a Haskell port of counter-based random number generators from the Random123 library\n(<http://www.thesalmons.org/john/random123/>) v1.07 (with a minor bugfix).\nThe description of algorithms can be also found in\nSalmon et al., P. Int. C. High. Perform. 16 (2011)\n(<http://dx.doi.org/doi:10.1145/2063384.2063405>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."Random123" or ((hsPkgs.pkgs-errors).buildDepError "Random123"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "test_perf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."Random123" or ((hsPkgs.pkgs-errors).buildDepError "Random123"))
            ];
          buildable = true;
          };
        };
      };
    }