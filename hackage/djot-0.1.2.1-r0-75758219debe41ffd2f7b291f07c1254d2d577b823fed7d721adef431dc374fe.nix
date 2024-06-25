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
      identifier = { name = "djot"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2024 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Parser and renderer for djot light markup syntax.";
      description = "Djot (<https://djot.net>) is a light markup language.\nThis package provides a data structure to represent\ndjot documents, a very fast parser, and functions\nto render a parsed document as HTML and as djot.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "djoths" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
            (hsPkgs."djot" or (errorHandler.buildDepError "djot"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-djot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
            (hsPkgs."djot" or (errorHandler.buildDepError "djot"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark-djot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
            (hsPkgs."djot" or (errorHandler.buildDepError "djot"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }