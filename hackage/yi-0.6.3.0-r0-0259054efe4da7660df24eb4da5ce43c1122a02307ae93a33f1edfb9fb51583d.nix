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
    flags = {
      cocoa = false;
      pango = false;
      vte = false;
      vty = true;
      scion = false;
      ghcapi = false;
      hacking = false;
      testing = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.6.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."data-accessor-monads-fd" or (errorHandler.buildDepError "data-accessor-monads-fd"))
          (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) [
          (hsPkgs."cautious-file" or (errorHandler.buildDepError "cautious-file"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ]) ++ (pkgs.lib).optionals (flags.testing) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ]) ++ (pkgs.lib).optionals (flags.cocoa) [
          (hsPkgs."HOC" or (errorHandler.buildDepError "HOC"))
          (hsPkgs."HOC-AppKit" or (errorHandler.buildDepError "HOC-AppKit"))
          (hsPkgs."HOC-Foundation" or (errorHandler.buildDepError "HOC-Foundation"))
          ]) ++ (pkgs.lib).optionals (flags.pango) [
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          ]) ++ (pkgs.lib).optionals (flags.vte) [
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."vte" or (errorHandler.buildDepError "vte"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          ]) ++ (pkgs.lib).optionals (flags.vty) [
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = if flags.hacking then false else true;
        };
      exes = {
        "parserTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
            ];
          buildable = false;
          };
        "yi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
            ];
          buildable = true;
          };
        };
      };
    }