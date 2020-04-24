{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "table-tennis"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "rorystephenson@gmail.com";
      author = "Rory Stephenson";
      homepage = "";
      url = "";
      synopsis = "A table tennis game tracking engine";
      description = "A table tennis game tracking engine. This is purely a\nfacility for managing a game.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }