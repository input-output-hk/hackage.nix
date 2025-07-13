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
      specVersion = "3.0";
      identifier = { name = "convex-schema-parser"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "(c) 2025 Parsonos Corporation";
      maintainer = "lambdax.one@icloud.com";
      author = "Norbert Dzikowski";
      homepage = "https://github.com/parsonosai/convex-schema-parser";
      url = "";
      synopsis = "A type-safe client generator for Convex for both Rust and Python.";
      description = "A command-line tool designed to parse your Convex project's schema and\nfunction definitions, generating strongly-typed API clients for both Rust\nand Python.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "convex-schema-parser-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
      exes = {
        "convex-schema-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."convex-schema-parser".components.sublibs.convex-schema-parser-lib or (errorHandler.buildDepError "convex-schema-parser:convex-schema-parser-lib"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-convex-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convex-schema-parser".components.sublibs.convex-schema-parser-lib or (errorHandler.buildDepError "convex-schema-parser:convex-schema-parser-lib"))
          ];
          buildable = true;
        };
      };
    };
  }