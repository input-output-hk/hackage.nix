{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "glome-hs"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://syn.cs.pdx.edu/~jsnow/glome";
      url = "";
      synopsis = "ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "glome" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.time)
            (hsPkgs.parallel)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }