{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "MTGBuilder"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "elvishjerricco@gmail.com";
      author = "ElvishJerricco";
      homepage = "";
      url = "";
      synopsis = "Builds decks out of a meta";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mtg-builder" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }