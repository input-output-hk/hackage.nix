{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-aeson"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2019 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
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
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."genvalidity-scientific" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-scientific"))
          (hsPkgs."genvalidity-text" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-text"))
          (hsPkgs."genvalidity-unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-unordered-containers"))
          (hsPkgs."genvalidity-vector" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-vector"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-aeson" or ((hsPkgs.pkgs-errors).buildDepError "validity-aeson"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-aeson"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }