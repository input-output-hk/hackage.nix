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
      identifier = { name = "stim-parser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "le.niu@hotmail.com";
      author = "le.niu";
      homepage = "";
      url = "";
      synopsis = "A parser combinator library for STIM quantum circuit files";
      description = "A Haskell library for parsing STIM quantum circuit files into an AST.\nSTIM is a file format for describing quantum stabilizer circuits.\nThis library provides parsers for gates, measurements, noise channels,\nannotations, and complete STIM circuits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "stim-parser-unit-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stim-parser" or (errorHandler.buildDepError "stim-parser"))
          ];
          buildable = true;
        };
        "stim-parser-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stim-parser" or (errorHandler.buildDepError "stim-parser"))
          ];
          buildable = true;
        };
      };
      tests = {
        "stim-parser-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stim-parser" or (errorHandler.buildDepError "stim-parser"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
          buildable = true;
        };
      };
    };
  }