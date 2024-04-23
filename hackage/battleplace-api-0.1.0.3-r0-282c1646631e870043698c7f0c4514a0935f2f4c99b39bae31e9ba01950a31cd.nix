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
      identifier = { name = "battleplace-api"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "(c) 2017-2018 Alexander Bich";
      maintainer = "Alexander Bich <quyse0@gmail.com>";
      author = "Alexander Bich <quyse0@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Public API definitions of BattlePlace.io service";
      description = "Public API definitions of BattlePlace.io service";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."battleplace" or (errorHandler.buildDepError "battleplace"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
        ];
        buildable = true;
      };
    };
  }