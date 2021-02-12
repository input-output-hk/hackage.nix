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
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "clutterhs"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2009 Matthew Arsenault";
      maintainer = "arsenm2@rpi.edu";
      author = "Matthew Arsenault";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Clutter animation library";
      description = "Clutterhs is a binding to the Clutter C library. Clutter\nis an open source software library for creating fast,\nvisually rich, portable and animated graphical user\ninterfaces. Clutter uses OpenGL for rendering but with\nan API which hides the underlying GL complexity from the\ndeveloper. The Clutter API is intended to be easy to use,\nefficient and flexible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
          (pkgconfPkgs."clutter-1.0" or (errorHandler.pkgConfDepError "clutter-1.0"))
          (pkgconfPkgs."pango" or (errorHandler.pkgConfDepError "pango"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }