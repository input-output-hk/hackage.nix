{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Attrac";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ruben Henner Zilibowitz <rzilibowitz at yahoo dot com dot au>";
        author = "Ruben Henner Zilibowitz <rzilibowitz at yahoo dot com dot au>";
        homepage = "http://patch-tag.com/r/rhz/StrangeAttractors";
        url = "";
        synopsis = "Visualisation of Strange Attractors in 3-Dimensions";
        description = "This software uses innovative techniques to achieve 3-D visualisation\nof the point sets known as Strange Attractors resulting from iteration\nof non-linear maps on points in Euclidean Space.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Attrac = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.colour
              hsPkgs.random
            ];
          };
        };
      };
    }