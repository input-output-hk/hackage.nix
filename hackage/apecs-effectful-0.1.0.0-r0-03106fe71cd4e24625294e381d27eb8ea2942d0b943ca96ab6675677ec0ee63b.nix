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
      specVersion = "3.0";
      identifier = { name = "apecs-effectful"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/apecs-effectful";
      url = "";
      synopsis = "Adaptation of the apecs library for the effectful ecosystem.";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/apecs-effectful#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }