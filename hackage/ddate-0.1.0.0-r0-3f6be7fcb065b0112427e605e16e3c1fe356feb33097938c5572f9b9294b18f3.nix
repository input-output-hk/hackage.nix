{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ddate"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "veit@veitheller.de";
      author = "Veit Heller";
      homepage = "";
      url = "";
      synopsis = "Discordian Date Types for Haskell";
      description = "This package adds the DDate and DDateTime types\nand corresponding functions to Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."dates" or ((hsPkgs.pkgs-errors).buildDepError "dates"))
          ];
        buildable = true;
        };
      };
    }