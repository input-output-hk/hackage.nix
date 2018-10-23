{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hfractal";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisholdsworth@gmail.com";
      author = "Chris Holdsworth";
      homepage = "";
      url = "";
      synopsis = "OpenGL fractal renderer";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hfractal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.gd)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }