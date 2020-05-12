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
    flags = { profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "comark-html"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark (markdown) to HTML renderer.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "comark-html-profile" = {
          depends = (pkgs.lib).optionals (flags.profile) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."comark-html" or (errorHandler.buildDepError "comark-html"))
            (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
            (hsPkgs."comark-testutils" or (errorHandler.buildDepError "comark-testutils"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            ];
          buildable = if flags.profile then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comark-html" or (errorHandler.buildDepError "comark-html"))
            (hsPkgs."comark-testutils" or (errorHandler.buildDepError "comark-testutils"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "progit-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."comark-html" or (errorHandler.buildDepError "comark-html"))
            (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
            (hsPkgs."comark-testutils" or (errorHandler.buildDepError "comark-testutils"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }