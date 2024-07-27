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
    flags = { closure_signals = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "glib"; version = "0.13.4.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GLIB library for Gtk2Hs.";
      description = "GLib is a collection of C data structures and utility functions\nfor the GObject system, main loop implementation, for strings and\ncommon data structures dealing with Unicode. This package only binds\nas much functionality as required to support the packages that\nwrap libraries that are themselves based on GLib.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.gtk2hs-buildtools or (pkgs.pkgsBuildBuild.gtk2hs-buildtools or (errorHandler.setupDepError "gtk2hs-buildtools")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
        ];
        buildable = true;
      };
    };
  }