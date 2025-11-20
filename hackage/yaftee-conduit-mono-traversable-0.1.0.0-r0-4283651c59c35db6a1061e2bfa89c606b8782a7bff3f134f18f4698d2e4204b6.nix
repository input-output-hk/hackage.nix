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
      identifier = {
        name = "yaftee-conduit-mono-traversable";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yaftee-conduit-mono-traversable#readme";
      url = "";
      synopsis = "Mono traversable tools for Yaftee Conduit";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yaftee-conduit-mono-traversable#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
          (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
          (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
          (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
        ];
        buildable = true;
      };
      tests = {
        "yaftee-conduit-mono-traversable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
            (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
            (hsPkgs."yaftee-conduit-mono-traversable" or (errorHandler.buildDepError "yaftee-conduit-mono-traversable"))
          ];
          buildable = true;
        };
      };
    };
  }