{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "suffix-array"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Joshua Simmons";
      maintainer = "joshua.simmons@emptypath.com";
      author = "Joshua Simmons";
      homepage = "https://github.com/kadoban/suffix-array#readme";
      url = "";
      synopsis = "Simple and moderately efficient suffix array implementation";
      description = "A simple implementation of a suffix array, with\nlongest-common-prefix array. While not\nasymptotically optimal, performs well in practice\nfor medium use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "suffix-array-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."suffix-array" or ((hsPkgs.pkgs-errors).buildDepError "suffix-array"))
            ];
          buildable = true;
          };
        };
      tests = {
        "suffix-array-test" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."suffix-array" or ((hsPkgs.pkgs-errors).buildDepError "suffix-array"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "suffix-array-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."suffix-array" or ((hsPkgs.pkgs-errors).buildDepError "suffix-array"))
            ];
          buildable = true;
          };
        };
      };
    }