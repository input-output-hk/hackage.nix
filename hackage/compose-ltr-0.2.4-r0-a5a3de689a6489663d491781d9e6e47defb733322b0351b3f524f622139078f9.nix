{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compose-ltr"; version = "0.2.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "123.wizek@gmail.com";
      author = "Milán Nagy";
      homepage = "";
      url = "";
      synopsis = "More intuitive, left-to-right function composition.";
      description = "More intuitive, left-to-right function composition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."compose-ltr" or ((hsPkgs.pkgs-errors).buildDepError "compose-ltr"))
            ];
          buildable = true;
          };
        };
      };
    }