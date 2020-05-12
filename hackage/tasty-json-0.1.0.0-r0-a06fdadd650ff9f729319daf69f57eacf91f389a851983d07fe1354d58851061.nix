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
      specVersion = "2.2";
      identifier = { name = "tasty-json"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020, Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/tasty-json";
      url = "";
      synopsis = "JSON reporter for the tasty testing framework";
      description = "Write [tasty](https://hackage.haskell.org/package/tasty) test results to\na file in JSON format.\n\n@\ndefaultMainWithIngredients (consoleAndJsonReporter : defaultIngredients) tests\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }