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
      identifier = { name = "boring-game"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Truong Hoang Dung";
      maintainer = "checkraiser11@gmail.com";
      author = "Truong Hoang Dung";
      homepage = "https://github.com/checkraiser/boring-game#readme";
      url = "";
      synopsis = "An educational game";
      description = "Using Gloss to build game in Haskell ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
        ];
        buildable = true;
      };
      exes = {
        "boring-game-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boring-game" or (errorHandler.buildDepError "boring-game"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
      };
      tests = {
        "boring-game-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boring-game" or (errorHandler.buildDepError "boring-game"))
          ];
          buildable = true;
        };
      };
    };
  }