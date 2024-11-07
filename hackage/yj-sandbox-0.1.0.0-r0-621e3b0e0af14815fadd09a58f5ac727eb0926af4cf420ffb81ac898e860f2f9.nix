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
      specVersion = "2.2";
      identifier = { name = "yj-sandbox"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright Yoshikuni Jujo (c) 2024";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yj-sandbox#readme";
      url = "";
      synopsis = "try hackage";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yj-sandbox#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "yj-sandbox-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."yj-sandbox" or (errorHandler.buildDepError "yj-sandbox"))
          ];
          buildable = true;
        };
      };
      tests = {
        "yj-sandbox-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."yj-sandbox" or (errorHandler.buildDepError "yj-sandbox"))
          ];
          buildable = true;
        };
      };
    };
  }