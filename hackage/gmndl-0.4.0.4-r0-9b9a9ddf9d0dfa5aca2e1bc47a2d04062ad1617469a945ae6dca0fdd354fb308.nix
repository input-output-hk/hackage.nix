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
      specVersion = "1.6";
      identifier = { name = "gmndl"; version = "0.4.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer.  Multiple render threads\nuse higher precision maths at higher zoom levels.\nSuggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@\n\nLeft-click to zoom in, right-click to zoom out.  The\nstatus bar shows where you are, and the entry field\ntakes an angled internal address, try for example:\n\n@1\\/3 1\\/2 5 7@";
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
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."priority-queue" or (errorHandler.buildDepError "priority-queue"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            ];
          buildable = true;
          };
        };
      };
    }