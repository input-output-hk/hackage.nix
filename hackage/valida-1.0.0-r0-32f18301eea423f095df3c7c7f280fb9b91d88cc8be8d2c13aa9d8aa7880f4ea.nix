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
      identifier = { name = "valida"; version = "1.0.0"; };
      license = "MIT";
      copyright = "TotallyNotChase";
      maintainer = "totallynotchase42@gmail.com";
      author = "Chase";
      homepage = "https://github.com/TotallyNotChase/valida#readme";
      url = "";
      synopsis = "Simple applicative validation for product types, batteries included!";
      description = "This package provides an applicative validator with support for contravariance. This makes building validators for product types idiomatic and simple. Many common utilities for building validators are also included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      tests = {
        "valida-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."valida" or (errorHandler.buildDepError "valida"))
          ];
          buildable = true;
        };
      };
    };
  }