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
      specVersion = "2.4";
      identifier = { name = "data-validation"; version = "0.1.2.0"; };
      license = "Apache-2.0";
      copyright = "2020 AlasConnect LLC";
      maintainer = "Ampersand <software@ampersandtech.com>";
      author = "Ampersand";
      homepage = "https://github.com/alasconnect/data-validation";
      url = "";
      synopsis = "A library for creating type safe validations.";
      description = "A library for creating type safe validations using typeclasses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      sublibs = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-validation" or (errorHandler.buildDepError "data-validation"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-data-validation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-validation" or (errorHandler.buildDepError "data-validation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }