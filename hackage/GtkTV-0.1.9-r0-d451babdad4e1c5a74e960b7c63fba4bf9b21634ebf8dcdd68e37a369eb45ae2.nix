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
      identifier = { name = "GtkTV"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/GtkTV";
      url = "http://code.haskell.org/~conal/code/GtkTV";
      synopsis = "Gtk-based GUIs for Tangible Values";
      description = "GtkTV is a very small library that extends the TV (tangible value)\nframework with graphical user interfaces, using gtk2hs.\n\n&#169; 2009, 2010 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."TV" or (errorHandler.buildDepError "TV"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
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