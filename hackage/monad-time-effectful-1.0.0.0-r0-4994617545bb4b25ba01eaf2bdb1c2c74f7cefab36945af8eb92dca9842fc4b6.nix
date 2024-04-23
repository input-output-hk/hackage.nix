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
      identifier = { name = "monad-time-effectful"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrzej@rybczak.net";
      author = "Andrzej Rybczak, Hécate Moonlight";
      homepage = "";
      url = "";
      synopsis = "Adaptation of the monad-time library for the effectful ecosystem.";
      description = "Adaptation of the @<https://hackage.haskell.org/package/monad-time monad-time>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }