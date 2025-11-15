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
      identifier = { name = "yaftee"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yaftee#readme";
      url = "";
      synopsis = "Yet Another heFTy-inspired Extensible Effect";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yaftee#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
          (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
        ];
        buildable = true;
      };
      tests = {
        "yaftee-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
            (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
          ];
          buildable = true;
        };
      };
    };
  }