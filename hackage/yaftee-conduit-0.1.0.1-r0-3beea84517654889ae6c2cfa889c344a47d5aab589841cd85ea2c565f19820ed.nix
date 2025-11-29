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
      identifier = { name = "yaftee-conduit"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yaftee-conduit#readme";
      url = "";
      synopsis = "Conduit implemented on Yaftee";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yaftee-conduit#readme>";
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
          (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
        ];
        buildable = true;
      };
      tests = {
        "yaftee-conduit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ftcqueue" or (errorHandler.buildDepError "ftcqueue"))
            (hsPkgs."higher-order-freer-monad" or (errorHandler.buildDepError "higher-order-freer-monad"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
            (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }