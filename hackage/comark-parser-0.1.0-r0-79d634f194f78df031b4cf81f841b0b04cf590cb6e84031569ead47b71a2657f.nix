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
      identifier = { name = "comark-parser"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Parser for Commonmark (markdown)";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."html5-entity" or (errorHandler.buildDepError "html5-entity"))
          (hsPkgs."control-bool" or (errorHandler.buildDepError "control-bool"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."comark-parser" or (errorHandler.buildDepError "comark-parser"))
            (hsPkgs."comark-testutils" or (errorHandler.buildDepError "comark-testutils"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."comark-testutils" or (errorHandler.buildDepError "comark-testutils"))
            (hsPkgs."comark-parser" or (errorHandler.buildDepError "comark-parser"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
          buildable = true;
        };
      };
    };
  }