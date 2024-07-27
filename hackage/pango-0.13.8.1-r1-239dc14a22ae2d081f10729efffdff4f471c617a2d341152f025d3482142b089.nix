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
    flags = { new-exception = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "pango"; version = "0.13.8.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Pango text rendering engine.";
      description = "This package provides a wrapper around the Pango C library that\nallows high-quality rendering of Unicode text. It can be used\neither with Cairo to output text in PDF, PS or other\ndocuments or with Gtk+ to display text on-screen.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.gtk2hs-buildtools or (pkgs.pkgsBuildBuild.gtk2hs-buildtools or (errorHandler.setupDepError "gtk2hs-buildtools")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = [
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
          (pkgconfPkgs."pangocairo" or (errorHandler.pkgConfDepError "pangocairo"))
        ] ++ [
          (pkgconfPkgs."pango" or (errorHandler.pkgConfDepError "pango"))
        ];
        buildable = true;
      };
    };
  }