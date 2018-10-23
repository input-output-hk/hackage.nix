{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "singnal";
        version = "0.1.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zaomir@outlook.com";
      author = "Zaoqi";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Singnal";
      buildType = "Simple";
    };
    components = {
      "singnal" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }