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
      identifier = { name = "websockets-simple"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/websockets-simple#readme";
      url = "";
      synopsis = "Simpler interface to the websockets api";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."every" or (errorHandler.buildDepError "every"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."wai-transformers" or (errorHandler.buildDepError "wai-transformers"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      };
    }