{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "Fractaler";
          version = "3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "serprex";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Fractal renderer";
        buildType = "Simple";
      };
      components = {
        exes = {
          Fractaler = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.random
              hsPkgs.parallel
              hsPkgs.OpenGLRaw
              hsPkgs.GLFW-b
              hsPkgs.FTGL
            ];
          };
        };
      };
    }