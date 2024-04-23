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
      specVersion = "1.2";
      identifier = { name = "GtkGLTV"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://code.haskell.org/~conal/code/GtkGLTV";
      synopsis = "OpenGL support for Gtk-based GUIs for Tangible Values";
      description = "GtkGLTV adds OpenGL support to GtkTV, which is a Gtk back-end for\ntangible values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."GtkTV" or (errorHandler.buildDepError "GtkTV"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."gtkglext" or (errorHandler.buildDepError "gtkglext"))
          (hsPkgs."bitmap" or (errorHandler.buildDepError "bitmap"))
          (hsPkgs."bitmap-opengl" or (errorHandler.buildDepError "bitmap-opengl"))
          (hsPkgs."stb-image" or (errorHandler.buildDepError "stb-image"))
        ];
        buildable = true;
      };
    };
  }