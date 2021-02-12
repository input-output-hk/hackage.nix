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
      ghcinterpreter = false;
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "yi"; version = "0.6.0"; };
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
      "library" = { buildable = true; };
      exes = {
        "yi" = {
          depends = ((((((([
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
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.gtk) [
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            ]) ++ (pkgs.lib).optional (flags.pango) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or (errorHandler.buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or (errorHandler.buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or (errorHandler.buildDepError "HOC-Foundation"))
            ]) ++ (pkgs.lib).optional (flags.ghcinterpreter) (hsPkgs."hint" or (errorHandler.buildDepError "hint"))) ++ (pkgs.lib).optionals (flags.ghcapi) [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]) ++ (pkgs.lib).optionals (flags.testing) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = if !(flags.vty || flags.gtk || flags.cocoa)
            then false
            else true;
          };
        };
      };
    }