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
    flags = { mpfr = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gruff"; version = "0.3.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "fractal explorer GUI using the ruff library";
      description = "Mandelbrot Set fractal explorer using the ruff library.\n\nRequires GTK, OpenGL, and GLSL fragment shader support; lots of RAM\nand multiple CPU cores recommended.\n\nIf you want to explore very deep zooms, you'll need hmpfr which\ncurrently requires GHC to be compiled with integer-simple instead of\nthe default integer-gmp.  To install with MPFR support, use\n@cabal install gruff -fmpfr@.\nNote that the default setting for this flag has changed since gruff-0.2.\n\ngruff-0.3.1 is a bugfix release, fixing a performance problem wherein\noffscreen tiles were needlessly calculated.  The performance gain\nis much less (and in many cases is in fact a performance loss) when\nusing integer-simple.\n\ngruff-0.3 includes a small library to allow external programs to\ncreate diagrams and animations with gruff.  See the gruff-examples\npackage.  The interface has been remodelled to simplify it and add\ninformative feature overlays.\n\ngruff-0.2.1 was a bugfix release.  Changes since gruff-0.2:\n\n* Supersampling bugs are fixed (no more undocumented quantization\nleading to inconsistent appearance at different zoom levels).\n\n* Race condition bugs in cache management are fixed (no more\nincompletely rendered images).\n\n* Internal changes/refactoring to make future additions easier.\n\nFeatures in this version include:\n\n* Interactive fractal browser display with mouse controls:\n\n* Left click to zoom in (press shift for bigger jumps).\n\n* Right click to zoom out (press shift for bigger jumps).\n\n* Middle click to center.\n\n* Shift middle click to auto-focus.\n\n* Control left click to label with period.\n\n* Control right click to label with angled internal address (slow!).\n\n* Session persistance (stored in @~\\/.gruff\\/state.gruff@ - states can\nalso be loaded from and saved to other files, including labels and\nrays).  Note that the file format is incompatible with previous\nreleases of gruff.\n\n* Tile cache (by default in @~\\/.gruff\\/cache@ - symlink it somewhere\nwith a few GB of space if you plan on exploring a lot).\n\n* Can use MPFR if desired for higher precision, allowing deeper\nzooms and locating high period nucleii.\n\n* Limited amount of customizable colouring (colours for interior,\nborder, and exterior points, as well as labels and rays).\n\n* Supersampling for more detailed images (useful range is 1 to 16).\n\n* Rudimentary scripting support (see the gruff-examples package).\n\nFuture versions will focus on enhancing the scripting support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ruff" or (buildDepError "ruff"))
          ];
        };
      exes = {
        "gruff" = {
          depends = [
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."FTGL" or (buildDepError "FTGL"))
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