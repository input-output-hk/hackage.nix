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
      identifier = { name = "apiary-mongoDB"; version = "1.4.0"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "mongoDB support for apiary web framework.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."types-compat" or (errorHandler.buildDepError "types-compat"))
          ];
        buildable = true;
        };
      };
    }