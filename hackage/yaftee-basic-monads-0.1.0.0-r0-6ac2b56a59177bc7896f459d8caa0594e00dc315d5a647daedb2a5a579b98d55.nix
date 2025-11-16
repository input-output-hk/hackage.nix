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
      identifier = { name = "yaftee-basic-monads"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yaftee-basic-monads#readme";
      url = "";
      synopsis = "Basic monads implemented on Yaftee";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yaftee-basic-monads#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
          (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
          (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
        ];
        buildable = true;
      };
      tests = {
        "yaftee-basic-monads-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
            (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
          ];
          buildable = true;
        };
      };
    };
  }