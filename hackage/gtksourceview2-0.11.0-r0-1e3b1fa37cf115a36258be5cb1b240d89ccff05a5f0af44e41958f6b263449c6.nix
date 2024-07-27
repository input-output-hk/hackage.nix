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
      identifier = { name = "gtksourceview2"; version = "0.11.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts, Peter Gavin, Axel Simon";
      homepage = "http://www.haskell.org/gtk2hs/";
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
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gtksourceview-2.0" or (errorHandler.pkgConfDepError "gtksourceview-2.0"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.pkgsBuildBuild.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.pkgsBuildBuild.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.pkgsBuildBuild.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
          (hsPkgs.pkgsBuildBuild.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.pkgsBuildBuild.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
        ];
        buildable = true;
      };
    };
  }