{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "organize-imports"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "luke@lukecycon.com";
      author = "Luke Cycon";
      homepage = "";
      url = "";
      synopsis = "Organize scala imports";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "organize-imports" = {
          depends = [ (hsPkgs.base) (hsPkgs.attoparsec) (hsPkgs.text) ];
          };
        };
      };
    }