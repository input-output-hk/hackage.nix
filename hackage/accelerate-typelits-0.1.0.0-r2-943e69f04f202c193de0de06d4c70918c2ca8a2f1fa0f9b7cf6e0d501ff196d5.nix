{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "accelerate-typelits"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "(c) 2016 Martin Heuschober";
      maintainer = "Martin Heuschober <epsilonhalbe [at] gmail [dot] com>";
      author = "Martin Heuschober";
      homepage = "";
      url = "";
      synopsis = "a typesafe way encode accelerate matrices and vectors";
      description = "a small wrapper plus convenience functions on top of\naccelerate to represent matrices with their dimensions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."accelerate-random" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-random"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-random" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-random"))
            (hsPkgs."accelerate-typelits" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-typelits"))
            (hsPkgs."HUnit-Plus" or ((hsPkgs.pkgs-errors).buildDepError "HUnit-Plus"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }