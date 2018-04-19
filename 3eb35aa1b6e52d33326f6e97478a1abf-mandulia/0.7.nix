{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      fast = false;
      sse4 = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mandulia";
          version = "0.7";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2010  Claude Heiland-Allen <claudiusmaximus@goto10.org>";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "http://gitorious.org/maximus/mandulia";
        url = "";
        synopsis = "A zooming visualisation of the Mandelbrot Set as many Julia Sets.";
        description = "Mandulia provides a zooming visualisation of the Mandelbrot Set\nas many Julia Sets.  Featuring a profiled and optimized renderer,\nand a Lua configuration and scripting interface.\n\nMandulia supports additional compile-time flags for speed, but by\ndefault these are disabled because they don't work on all systems.\nThese flags are \"-ffast\" for miscellaneous optimizations, and\n\"-ffast -fSSE4\" to use SSE4 instructions too.\n\nChanges from \"mandulia-0.6\": the optimization flags are disabled\nby default as they were causing problems on some systems; reduced\nvisual jitter for smoother animation; smoother colour gradations;\naccess runtime statistics from Lua scripts.";
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
          };
        };
      };
    }