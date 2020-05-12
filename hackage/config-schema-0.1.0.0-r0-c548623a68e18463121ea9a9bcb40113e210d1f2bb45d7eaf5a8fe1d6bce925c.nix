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
      identifier = { name = "config-schema"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "Eric Mertens 2017";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/config-schema";
      url = "";
      synopsis = "Schema definitions for the config-value package";
      description = "This package makes it possible to defined schemas for use when\nloading configuration files using the config-value format.\nThese schemas can be used to be process a configuration file into\na Haskell value, or to automatically generate documentation for\nthe file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."config-value" or (errorHandler.buildDepError "config-value"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }