{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."qd-vec" or ((hsPkgs.pkgs-errors).buildDepError "qd-vec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or ((hsPkgs.pkgs-errors).buildDepError "hmpfr"));
          buildable = true;
          };
        };
      };
    }