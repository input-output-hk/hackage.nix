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
        name = "physics";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018, Florian Knupfer";
      maintainer = "fknupfer@gmail.com";
      author = "Florian Knupfer";
      homepage = "";
      url = "";
      synopsis = "dimensions, quantities and constants";
      description = "Library to work with typed SI dimensions and common physical functions and constants.";
      buildType = "Simple";
    };
    components = {
      "physics" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }