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
        name = "glome-hs";
        version = "0.60";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008,2010 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://haskell.org/haskellwiki/Glome";
      url = "";
      synopsis = "ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.  The rendering algorithms have been abstracted\nto an external library, GlomeTrace.  This is just a front-end\nto the library that renders scenes into an opengl window.";
      buildType = "Simple";
    };
    components = {
      "glome-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.time)
          (hsPkgs.parallel)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.GlomeVec)
          (hsPkgs.GlomeTrace)
        ];
      };
      exes = {
        "Glome" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.time)
            (hsPkgs.parallel)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.GlomeVec)
            (hsPkgs.GlomeTrace)
          ];
        };
      };
    };
  }