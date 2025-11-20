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
      identifier = { name = "zlib-yaftee"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/zlib-yaftee#readme";
      url = "";
      synopsis = "Zlib wrapper built on Yaftee";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/zlib-yaftee#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
          (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
          (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
          (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
          (hsPkgs."zlib-core" or (errorHandler.buildDepError "zlib-core"))
        ];
        buildable = true;
      };
      tests = {
        "zlib-yaftee-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
            (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
            (hsPkgs."zlib-core" or (errorHandler.buildDepError "zlib-core"))
            (hsPkgs."zlib-yaftee" or (errorHandler.buildDepError "zlib-yaftee"))
          ];
          buildable = true;
        };
      };
    };
  }