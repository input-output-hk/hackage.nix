{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      sse4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mandulia";
          version = "0.5";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2010  Claude Heiland-Allen <claudiusmaximus@goto10.org>";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "http://gitorious.org/maximus/mandulia";
        url = "";
        synopsis = "A zooming visualisation of the Mandelbrot Set as many Julia Sets.";
        description = "Mandulia provides a zooming visualisation of the Mandelbrot Set\nas many Julia Sets.  Featuring a profiled and optimized renderer,\nand a Lua configuration and scripting interface.\n\nBy default Mandulia compiles using SSE4 instructions.  If your\nCPU does not support SSE4, you should add \"-f-SSE4\" to your\ncabal-install command line.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mandulia = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.GLUT
              hsPkgs.hslua
            ];
            build-tools = [ hsPkgs.hsc2hs ];
          };
        };
      };
    }