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
      identifier = { name = "JuicyCairo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "YoshikuniJujo";
      homepage = "https://github.com/githubuser/JuicyCairo#readme";
      url = "";
      synopsis = "To use images of JuicyPixels from Cairo";
      description = "Please see the README on GitHub at <https://github.com/githubuser/JuicyCairo#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "JuicyCairo-test" = {
          depends = [
            (hsPkgs."JuicyCairo" or (errorHandler.buildDepError "JuicyCairo"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }