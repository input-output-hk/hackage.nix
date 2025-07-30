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
      identifier = { name = "first-class-instances"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matej Nižník";
      maintainer = "lysxia@gmail.com";
      author = "Matej Nižník";
      homepage = "";
      url = "";
      synopsis = "First class typeclass instances";
      description = "See the README file in the project repository";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test-fci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-instances" or (errorHandler.buildDepError "first-class-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }