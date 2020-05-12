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
      identifier = { name = "language-elm"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elias Lawson-Fox";
      maintainer = "eliaslfox@gmail.com";
      author = "Elias Lawson-Fox";
      homepage = "https://github.com/eliaslfox/language-elm#readme";
      url = "";
      synopsis = "Generate elm code";
      description = "Generate elm code from an ast";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      exes = {
        "language-elm-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-elm" or (errorHandler.buildDepError "language-elm"))
            ];
          buildable = true;
          };
        };
      tests = {
        "language-elm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-elm" or (errorHandler.buildDepError "language-elm"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }