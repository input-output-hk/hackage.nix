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
      specVersion = "1.12";
      identifier = { name = "typson-selda"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Aaron Allen";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "https://github.com/aaronallen8455/typson#readme";
      url = "";
      synopsis = "Typson Selda Integration";
      description = "Please see the README on GitHub at <https://github.com/aaronallen8455/typson#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
          (hsPkgs."selda-json" or (errorHandler.buildDepError "selda-json"))
          (hsPkgs."selda-postgresql" or (errorHandler.buildDepError "selda-postgresql"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typson-core" or (errorHandler.buildDepError "typson-core"))
        ];
        buildable = true;
      };
      tests = {
        "typson-selda-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
            (hsPkgs."selda-json" or (errorHandler.buildDepError "selda-json"))
            (hsPkgs."selda-postgresql" or (errorHandler.buildDepError "selda-postgresql"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."test-fixture" or (errorHandler.buildDepError "test-fixture"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typson-core" or (errorHandler.buildDepError "typson-core"))
            (hsPkgs."typson-selda" or (errorHandler.buildDepError "typson-selda"))
          ];
          buildable = true;
        };
      };
    };
  }