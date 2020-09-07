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
      identifier = { name = "composite-aeson-throw"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "MonadThrow behaviour for composite-aeson.";
      description = "MonadThrow behaviour for composite-aeson.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }