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
      identifier = {
        name = "composable-associations-aeson";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2017 Samuel Protas";
      maintainer = "sam.protas@gmail.com";
      author = "Sam Protas";
      homepage = "https://github.com/SamProtas/composable-associations#readme";
      url = "";
      synopsis = "Aeson ToJSON/FromJSON implementation for the types of composable-associations";
      description = "This library provides the orphan instances implementation JSON serialization for the types in\ncomposiable-associations, as well as any other Aeson-specific implementation details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composable-associations" or (errorHandler.buildDepError "composable-associations"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."composable-associations-aeson" or (errorHandler.buildDepError "composable-associations-aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."composable-associations-aeson" or (errorHandler.buildDepError "composable-associations-aeson"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }