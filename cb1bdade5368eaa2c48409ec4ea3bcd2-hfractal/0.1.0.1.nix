{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hfractal";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Holdsworth <chrisholdsworth@gmail.com>";
      author = "Chris Holdsworth <chrisholdsworth@gmail.com>";
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
            (hsPkgs.gd)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }