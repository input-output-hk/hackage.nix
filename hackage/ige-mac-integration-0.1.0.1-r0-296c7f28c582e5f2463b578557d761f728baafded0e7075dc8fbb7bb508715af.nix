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
      specVersion = "1.6.0";
      identifier = { name = "ige-mac-integration"; version = "0.1.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts, Peter Gavin, Axel Simon, Hamish Mackenzie";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Bindings for the Gtk/OS X integration library.";
      description = "ige-mac-integration helps integrate Gtk applications with the native Mac\ndesktop and make it feel more like a Mac application.\nhttp://sourceforge.net/apps/trac/gtk-osx/wiki/Integrate";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ige-mac-integration" or (errorHandler.pkgConfDepError "ige-mac-integration"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }