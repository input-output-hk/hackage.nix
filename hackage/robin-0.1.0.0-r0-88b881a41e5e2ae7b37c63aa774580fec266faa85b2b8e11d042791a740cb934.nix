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
      specVersion = "1.10";
      identifier = { name = "robin"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013-2015 Karl Voelker";
      maintainer = "robin@karlv.net";
      author = "Karl Voelker";
      homepage = "https://www.github.com/ktvoelker/robin";
      url = "";
      synopsis = "A build daemon for Haskell development";
      description = "Robin is a daemon for Haskell developers. It runs a build whenever a source\nfile changes. Cabal, Stack, and custom builds are all supported.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "robin" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }