let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mpfr = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "gruff"; version = "0.2"; };
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
        "gruff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."gtkglext" or (buildDepError "gtkglext"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."qd" or (buildDepError "qd"))
            (hsPkgs."qd-vec" or (buildDepError "qd-vec"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (buildDepError "hmpfr"));
          };
        };
      };
    }