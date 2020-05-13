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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "MissingH"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2011 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/missingh";
      url = "";
      synopsis = "Large utility library";
      description = "MissingH is a library of all sorts of utility functions for\nHaskell programmers.  It is written in pure Haskell and thus should\nbe extremely portable and easy to use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = ([
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }