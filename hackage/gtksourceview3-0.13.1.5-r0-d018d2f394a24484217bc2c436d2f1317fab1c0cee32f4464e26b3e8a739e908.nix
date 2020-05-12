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
      specVersion = "1.18";
      identifier = { name = "gtksourceview3"; version = "0.13.1.5"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Duncan Coutts, Peter Gavin, Axel Simon";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GtkSourceView library.";
      description = "GtkSourceView is a text widget that extends the standard GTK+ 2.x text widget\nGtkTextView. It improves GtkTextView by implementing syntax highlighting and\nother features typical of a source editor.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtksourceview-3.0" or (errorHandler.pkgConfDepError "gtksourceview-3.0"))
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