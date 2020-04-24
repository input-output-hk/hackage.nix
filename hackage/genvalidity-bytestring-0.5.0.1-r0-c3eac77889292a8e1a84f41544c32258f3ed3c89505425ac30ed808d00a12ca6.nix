{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-bytestring"; version = "0.5.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for ByteString";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "validity-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-bytestring-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-bytestring"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
            ];
          buildable = true;
          };
        };
      };
    }