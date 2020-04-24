{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-mergeful"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeful#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-time" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-time"))
          (hsPkgs."mergeful" or ((hsPkgs.pkgs-errors).buildDepError "mergeful"))
          ];
        buildable = true;
        };
      tests = {
        "mergeful-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-mergeful" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-mergeful"))
            (hsPkgs."genvalidity-uuid" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-uuid"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mergeful" or ((hsPkgs.pkgs-errors).buildDepError "mergeful"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }