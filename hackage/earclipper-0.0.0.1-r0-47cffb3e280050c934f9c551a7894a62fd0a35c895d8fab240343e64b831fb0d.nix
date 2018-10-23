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
        name = "earclipper";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "firas@zaidan.de";
      author = "Firas Zaidan";
      homepage = "https://github.com/zaidan/earclipper#readme";
      url = "";
      synopsis = "Ear Clipping Triangulation";
      description = "A library and command line tool to triangulate polygons with an ear clipping algorithm.";
      buildType = "Simple";
    };
    components = {
      "earclipper" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "earclipper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.earclipper)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.earclipper)
            (hsPkgs.hspec)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }