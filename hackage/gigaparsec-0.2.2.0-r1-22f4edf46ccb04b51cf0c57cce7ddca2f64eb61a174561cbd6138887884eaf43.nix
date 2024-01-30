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
      identifier = { name = "gigaparsec"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023-present Jamie Willis, Gigaparsec Maintainers";
      maintainer = "j.willis19@imperial.ac.uk";
      author = "Jamie Willis";
      homepage = "https://github.com/j-mie6/gigaparsec";
      url = "";
      synopsis = "Refreshed parsec-style library for compatiblity with Scala parsley";
      description = "This is a monadic parser combinator designed to be easy to use,\nespecially for beginners, and have API parity with the\n@[parsley](https://github.com/j-mie6/parsley)@ library. It supports\ndesign patterns introduced in /Design Patterns for Parser Combinators/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "gigaparsec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gigaparsec" or (errorHandler.buildDepError "gigaparsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."knob" or (errorHandler.buildDepError "knob"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "perf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gigaparsec" or (errorHandler.buildDepError "gigaparsec"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }