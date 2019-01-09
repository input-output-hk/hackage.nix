{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mpfr = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gruff"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "fractal explorer GUI using the ruff library";
      description = "Mandelbrot Set fractal explorer using the ruff library.\n\nRequires GTK, OpenGL, and GLSL fragment shader support; lots of RAM\nand multiple CPU cores recommended.  If you want to explore very deep\nzooms, you'll need hmpfr which currently requires GHC to be compiled\nwith integer-simple instead of the default integer-gmp.  To install\nwith MPFR support, use @cabal install gruff -fmpfr@.  (Note that the\ndefault setting for this flag has changed since the previous release.)\n\ngruff-0.3 includes a small library to allow external programs to\ncreate diagrams and animations with gruff.  See the gruff-examples\npackage.  The interface has been remodelled to simplify it and add\ninformative feature overlays.\n\ngruff-0.2.1 was a bugfix release.  Changes since gruff-0.2:\n\n* Supersampling bugs are fixed (no more undocumented quantization\nleading to inconsistent appearance at different zoom levels).\n\n* Race condition bugs in cache management are fixed (no more\nincompletely rendered images).\n\n* Internal changes/refactoring to make future additions easier.\n\nFeatures in this version include:\n\n* Interactive fractal browser display with mouse controls:\n\n* Left click to zoom in (press shift for bigger jumps).\n\n* Right click to zoom out (press shift for bigger jumps).\n\n* Middle click to center.\n\n* Shift middle click to auto-focus.\n\n* Control left click to label with period.\n\n* Control right click to label with angled internal address (slow!).\n\n* Session persistance (stored in @~\\/.gruff\\/state.gruff@ - states can\nalso be loaded from and saved to other files, including labels and\nrays).  Note that the file format is incompatible with previous\nreleases of gruff.\n\n* Tile cache (by default in @~\\/.gruff\\/cache@ - symlink it somewhere\nwith a few GB of space if you plan on exploring a lot).\n\n* Can use MPFR if desired for higher precision, allowing deeper\nzooms and locating high period nucleii.\n\n* Limited amount of customizable colouring (colours for interior,\nborder, and exterior points, as well as labels and rays).\n\n* Supersampling for more detailed images (useful range is 1 to 16).\n\n* Rudimentary scripting support (see the gruff-examples package).\n\nFuture versions will focus on enhancing the scripting support.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ruff) ]; };
      exes = {
        "gruff" = {
          depends = [
            (hsPkgs.gruff)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.FTGL)
            (hsPkgs.gtk)
            (hsPkgs.gtkglext)
            (hsPkgs.old-locale)
            (hsPkgs.OpenGL)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.parallel)
            (hsPkgs.qd)
            (hsPkgs.qd-vec)
            (hsPkgs.time)
            (hsPkgs.Vec)
            (hsPkgs.ruff)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs.hmpfr);
          };
        };
      };
    }