{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "genvalidity-aeson"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for aeson";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-aeson" or ((hsPkgs.pkgs-errors).buildDepError "validity-aeson"))
          (hsPkgs."genvalidity-text" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-text"))
          (hsPkgs."genvalidity-vector" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-vector"))
          (hsPkgs."genvalidity-unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-unordered-containers"))
          (hsPkgs."genvalidity-scientific" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-scientific"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-aeson-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }