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
      specVersion = "1.8";
      identifier = { name = "vtegtk3"; version = "0.13.0.2"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Andy Stewart, Axel Simon";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the VTE library.";
      description = "The VTE library inserts terminal capability strings into a trie, and then\nuses it to determine if data received from a pseudo-terminal is a control\nsequence or just random data. The sample program \"interpret\" illustrates\nmore or less what the widget sees after it filters incoming data.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
        ];
        pkgconfig = [
          (pkgconfPkgs."vte-2.90" or (errorHandler.pkgConfDepError "vte-2.90"))
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