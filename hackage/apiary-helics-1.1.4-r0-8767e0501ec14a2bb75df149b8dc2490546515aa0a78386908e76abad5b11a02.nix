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
      identifier = { name = "apiary-helics"; version = "1.1.4"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "helics support for apiary web framework.";
      description = "helics support for apiary web framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
          (hsPkgs."helics" or (errorHandler.buildDepError "helics"))
          (hsPkgs."helics-wai" or (errorHandler.buildDepError "helics-wai"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      };
    }