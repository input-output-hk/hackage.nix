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
    flags = { error = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "jsonlogic"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jelleteeuwissen@hotmail.nl";
      author = "Marien Matser, Gerard van Schie, Jelle Teeuwissen";
      homepage = "";
      url = "";
      synopsis = "JsonLogic Evaluation";
      description = "JsonLogic is a library for evaluating JSON logic.\nIt can be extended with additional operations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "jsonlogic-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsonlogic" or (errorHandler.buildDepError "jsonlogic"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }