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
      identifier = { name = "deterministic-game-engine"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "https://github.com/TGOlson/deterministic-game-engine";
      url = "";
      synopsis = "Simple deterministic game engine";
      description = "Game engine for creating deterministic games.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."deterministic-game-engine" or (errorHandler.buildDepError "deterministic-game-engine"))
          ];
          buildable = true;
        };
      };
    };
  }