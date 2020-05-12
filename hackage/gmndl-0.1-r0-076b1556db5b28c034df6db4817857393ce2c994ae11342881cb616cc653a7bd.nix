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
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "gmndl"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer, with (currently) only one\ncontrol (left-click to center and zoom in).  Multple\nrender threads use higher precision maths at higher\nzoom levels.  Suggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gmndl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gtkglext" or (errorHandler.buildDepError "gtkglext"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."priority-queue" or (errorHandler.buildDepError "priority-queue"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            ];
          buildable = true;
          };
        };
      };
    }