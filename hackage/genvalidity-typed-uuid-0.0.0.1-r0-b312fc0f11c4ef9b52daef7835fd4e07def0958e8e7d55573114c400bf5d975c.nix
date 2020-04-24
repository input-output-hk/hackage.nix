{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-typed-uuid"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/typed-uuid#readme";
      url = "";
      synopsis = "Generators for Phantom-Typed version of UUID";
      description = "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."genvalidity-uuid" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-uuid"))
          (hsPkgs."typed-uuid" or ((hsPkgs.pkgs-errors).buildDepError "typed-uuid"))
          ];
        buildable = true;
        };
      tests = {
        "typed-uuid-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-typed-uuid" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-typed-uuid"))
            (hsPkgs."genvalidity-uuid" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-uuid"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."typed-uuid" or ((hsPkgs.pkgs-errors).buildDepError "typed-uuid"))
            ];
          buildable = true;
          };
        };
      };
    }