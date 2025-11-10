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
      identifier = { name = "higher-order-freer-monad"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/higher-order-freer-monad#readme";
      url = "";
      synopsis = "This package is used by package yaftee";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/higher-order-freer-monad#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."freer-base-classes" or (errorHandler.buildDepError "freer-base-classes"))
          (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
        ];
        buildable = true;
      };
      tests = {
        "higher-order-freer-monad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freer-base-classes" or (errorHandler.buildDepError "freer-base-classes"))
            (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
            (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
          ];
          buildable = true;
        };
      };
    };
  }