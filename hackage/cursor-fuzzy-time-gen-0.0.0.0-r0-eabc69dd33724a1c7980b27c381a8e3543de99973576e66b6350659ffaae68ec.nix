{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cursor-fuzzy-time-gen"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/fuzzy-time";
      url = "";
      synopsis = "";
      description = "Generators for the fuzzy time cursors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cursor-fuzzy-time" or ((hsPkgs.pkgs-errors).buildDepError "cursor-fuzzy-time"))
          (hsPkgs."cursor-gen" or ((hsPkgs.pkgs-errors).buildDepError "cursor-gen"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."fuzzy-time" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy-time"))
          (hsPkgs."fuzzy-time-gen" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy-time-gen"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."genvalidity-time" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-time"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "cursor-fuzzy-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cursor-fuzzy-time" or ((hsPkgs.pkgs-errors).buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or ((hsPkgs.pkgs-errors).buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."fuzzy-time" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy-time"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-optics" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-optics"))
            (hsPkgs."genvalidity-time" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-time"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "cursor-fuzzy-time-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."cursor-fuzzy-time" or ((hsPkgs.pkgs-errors).buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or ((hsPkgs.pkgs-errors).buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."genvalidity-criterion" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-criterion"))
            ];
          buildable = true;
          };
        };
      };
    }