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
      identifier = { name = "generic-env"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Yigit Ozkavci";
      maintainer = "yigitozkavci8@gmail.com";
      author = "Yigit Ozkavci";
      homepage = "https://github.com/yigitozkavci/generic-env#readme";
      url = "";
      synopsis = "Generic Environment Generator";
      description = "Please see the README on GitHub at <https://github.com/yigitozkavci/generic-env#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }