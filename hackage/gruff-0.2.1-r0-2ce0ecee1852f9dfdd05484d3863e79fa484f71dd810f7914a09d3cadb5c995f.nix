{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { mpfr = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "gruff"; version = "0.2.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "fractal explorer GUI using the ruff library";
      description = "Mandelbrot Set fractal explorer using the ruff library.\n\nRequires GTK, OpenGL, and GLSL fragment shader support; lots of RAM\nand multiple CPU cores recommended.  If you want to explore very deep\nzooms, you'll need hmpfr which currently requires GHC to be compiled\nwith integer-simple instead of the default integer-gmp.  To install\nwithout MPFR support, use @cabal install gruff -f-mpfr@.\n\nThis version is a bugfix release.  Changes since gruff-0.2:\n\n* Supersampling bugs are fixed (no more undocumented quantization\nleading to inconsistent appearance at different zoom levels).\n\n* Race condition bugs in cache management are fixed (no more\nincompletely rendered images).\n\n* Internal changes/refactoring to make future additions easier.\n\nFeatures in this version include:\n\n* Interactive fractal browser display (left click to zoom in,\nright click to zoom out, middle-click to center).\n\n* Session persistance (stored in @~\\/.gruff\\/state.gruff@ - states can\nalso be loaded from and saved to other files).\n\n* Tile cache (by default in @~\\/.gruff\\/cache@ - symlink it somewhere\nwith a few GB of space if you plan on exploring a lot).\n\n* High-level feature finding using angled internal addresses\n(enter an address, for example @1 2 3 1/3 10@, and hit return,\nthen click the adjacent Go button).\n\n* Feature finding using period location (navigate to approximate\nlocation of the desired feature, click the Scan button).\n\n* Angled internal address calculation using reverse ray trace\n(navigate to approximate feature location, click the Scan+ button).\n\n* Uses MPFR where available for higher precision, allowing deeper\nzooms and locating high period nucleii.\n\n* Limited amount of customizable colouring (colours for interior,\nborder, and exterior points).\n\n* Supersampling for more detailed images (useful range is 1 to 16).\n\nFuture features might include image saving, external ray and feature\ninformation overlays, more feature finding and identification\nalgorithms, scripting support for rendering animations, ...";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gruff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gtkglext" or (errorHandler.buildDepError "gtkglext"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."qd-vec" or (errorHandler.buildDepError "qd-vec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"));
          buildable = true;
          };
        };
      };
    }