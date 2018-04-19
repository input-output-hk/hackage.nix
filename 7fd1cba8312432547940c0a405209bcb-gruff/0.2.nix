{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mpfr = true;
    } // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "gruff";
          version = "0.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "fractal explorer GUI using the ruff library";
        description = "Mandelbrot Set fractal explorer using the ruff library.\n\nRequires GTK, OpenGL, and GLSL fragment shader support; lots of RAM\nand multiple CPU cores recommended.  If you want to explore very deep\nzooms, you'll need hmpfr which currently requires GHC to be compiled\nwith integer-simple instead of the default integer-gmp.  To install\nwithout MPFR support, use @cabal install gruff -f-mpfr@.\n\nFeatures in this version include:\n\n* Interactive fractal browser display (left click to zoom in,\nright click to zoom out, middle-click to center).\n\n* Session persistance (stored in @~/.gruff/state.gruff@ - states can\nalso be loaded from and saved to other files).\n\n* Tile cache (by default in @~/.gruff/cache@ - symlink it somewhere\nwith a few GB of space if you plan on exploring a lot).\n\n* High-level feature finding using angled internal addresses\n(enter an address, for example @1 2 3 1/3 10@, and hit return,\nthen click the adjacent Go button).\n\n* Feature finding using period location (navigate to approximate\nlocation of the desired feature, click the Scan button).\n\n* Angled internal address calculation using reverse ray trace\n(navigate to approximate feature location, click the Scan+ button).\n\n* Uses MPFR where available for higher precision, allowing deeper\nzooms and locating high period nucleii.\n\n* Limited amount of customizable colouring (colours for interior,\nborder, and exterior points).\n\n* Supersampling for more detailed images (useful range is 1 to 4).\n\nFuture features might include image saving, external ray and feature\ninformation overlays, more feature finding and identification\nalgorithms, scripting support for rendering animations, ...";
        buildType = "Simple";
      };
      components = {
        exes = {
          gruff = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gtk
              hsPkgs.gtkglext
              hsPkgs.old-locale
              hsPkgs.OpenGL
              hsPkgs.OpenGLRaw
              hsPkgs.parallel
              hsPkgs.qd
              hsPkgs.qd-vec
              hsPkgs.time
              hsPkgs.Vec
              hsPkgs.ruff
              hsPkgs.bytestring
              hsPkgs.mtl
            ] ++ pkgs.lib.optional _flags.mpfr hsPkgs.hmpfr;
          };
        };
      };
    }