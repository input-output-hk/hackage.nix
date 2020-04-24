{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "gruff"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "fractal explorer GUI using the ruff library";
      description = "Currently allows exploration only of the Mandelbrot Set fractal.\nRequires GTK, OpenGL, and GLSL fragment shader support.\n\nFeatures in this version include:\n\n* Interactive fractal browser display (left click to zoom in,\nright click to zoom out, middle-click to center).\n\n* Session persistance (stored in ~/.gruff/state.gruff - states can\nalso be loaded from and saved to other files).\n\n* Tile cache (by default in ~/.gruff/cache - symlink it somewhere\nwith a few GB of space if you plan on exploring a lot).\n\n* High-level feature finding using angled internal addresses\n(enter an address, for example @1 2 3 1/3 10@, and hit return,\nthen click the address to coordinates button).\n\n* Feature finding using period location (navigate to approximate\nlocation of the desired feature, click the period scan button).\n\n* Cache view (refreshed on program start) to visualize visited\nlocations.\n\nFuture features might include image saving, external ray and nucleus\nperiod overlays, more feature finding and identification algorithms,\ncustomizable colour schemes, higher precision for deeper zooms, etc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gruff" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."floatshow" or ((hsPkgs.pkgs-errors).buildDepError "floatshow"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            ];
          buildable = true;
          };
        };
      };
    }