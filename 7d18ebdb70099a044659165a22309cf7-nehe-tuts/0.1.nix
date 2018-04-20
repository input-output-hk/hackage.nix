{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nehe-tuts";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dagit@eecs.oregonstate.edu";
        author = "Jason Dagit";
        homepage = "";
        url = "";
        synopsis = "Port of the NeHe OpenGL tutorials to Haskell.";
        description = "Port of the NeHe OpenGL tutorials to Haskell; so far only lessons 1-12 have been ported.";
        buildType = "Simple";
      };
      components = {
        exes = {
          lesson01 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson02 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson03 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson04 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson05 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson06 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.haskell98
            ];
          };
          lesson07 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson08 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson09 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson10 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.array
            ];
          };
          lesson11 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
          lesson12 = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
        };
      };
    }