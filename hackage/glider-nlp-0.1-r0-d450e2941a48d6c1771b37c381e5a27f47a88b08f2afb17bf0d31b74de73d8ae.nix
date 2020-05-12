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
      identifier = { name = "glider-nlp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/glider-nlp";
      url = "";
      synopsis = "Natural Language Processing library";
      description = "Natural Language Processing (NLP) library.\n\nCheck module in folder \"Glider.NLP.Statistics\" for universal functions and\nGlider.NLP.Language.language for functions designed for specific language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }