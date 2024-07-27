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
    flags = { have-gio = true; build-demos = false; fmode-binary = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "gtk3"; version = "0.13.4"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts and many others";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Gtk+ graphical user interface library.";
      description = "This is the core library of the Gtk2Hs suite of libraries for Haskell\nbased on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit\nfor creating graphical user interfaces.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
        ] ++ pkgs.lib.optional (flags.have-gio) (hsPkgs."gio" or (errorHandler.buildDepError "gio"));
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        pkgconfig = [
          (pkgconfPkgs."gthread-2.0" or (errorHandler.pkgConfDepError "gthread-2.0"))
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.pkgsBuildBuild.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.pkgsBuildBuild.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.pkgsBuildBuild.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
          (hsPkgs.pkgsBuildBuild.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.pkgsBuildBuild.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
        ];
        buildable = true;
      };
      exes = {
        "gtk2hs-demo-actionMenu" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-buttonBox" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-carsim" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-progress" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-progressThreadedRTS" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-fastDraw" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-fonts" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-builder" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-helloworld" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-layout" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-menudemo" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-combodemo" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-notebook" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-statusIcon" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-arabic" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "gtk2hs-demo-overlay" = {
          depends = [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
      };
    };
  }