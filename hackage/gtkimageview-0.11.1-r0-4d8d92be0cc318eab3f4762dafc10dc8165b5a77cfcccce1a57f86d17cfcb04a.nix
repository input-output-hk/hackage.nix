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
      identifier = { name = "gtkimageview"; version = "0.11.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Andy Stewart";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GtkImageView library.";
      description = "GtkImageView is a simple image viewer widget for GTK+. Similar to the\nimage viewer panes in gThumb or Eye of Gnome. It makes writing image\nviewing and editing applications easy. Among its features are:\n* Mouse and keyboard zooming.\n* Scrolling and dragging.\n* Adjustable interpolation.\n* Fullscreen mode.\n* GIF animation support.\n* Ability to make selections.\n* Extensible using a tool system.";
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
          (pkgconfPkgs."gtkimageview" or (errorHandler.pkgConfDepError "gtkimageview"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }