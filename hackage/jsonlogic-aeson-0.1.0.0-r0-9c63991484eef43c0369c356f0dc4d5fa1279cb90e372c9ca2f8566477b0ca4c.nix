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
      identifier = { name = "jsonlogic-aeson"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jelleteeuwissen@hotmail.nl";
      author = "Marien Matser, Gerard van Schie, Jelle Teeuwissen";
      homepage = "";
      url = "";
      synopsis = "JsonLogic Aeson Support";
      description = "JsonLogic Aeson allows for the translation\nof JsonLogic json to Aeson json.and vice versa.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsonlogic" or (errorHandler.buildDepError "jsonlogic"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "jsonlogic-aeson-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsonlogic" or (errorHandler.buildDepError "jsonlogic"))
            (hsPkgs."jsonlogic-aeson" or (errorHandler.buildDepError "jsonlogic-aeson"))
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