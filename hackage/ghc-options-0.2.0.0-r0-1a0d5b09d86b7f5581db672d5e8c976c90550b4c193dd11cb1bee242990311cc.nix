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
      identifier = { name = "ghc-options"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "https://github.com/ranjitjhala/ghc-options.git";
      url = "";
      synopsis = "Utilities for extracting GHC options needed to compile a given Haskell target.";
      description = "'ghcopts' is a library that makes it easy to determine what\nGHC options are needed to compile a file. It was built\nby extracting the relevant code from 'hdevtools' which\nqueries 'cabal' and 'stack' to determine the locations\nof various package databases, in order to pass them to\nGHC to process a target file. We have refactored this\ncode into a separate package so that it can be used by\nother tools built on the GHC API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
        ];
        buildable = true;
      };
      exes = {
        "ghcopts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          ];
          buildable = true;
        };
      };
    };
  }