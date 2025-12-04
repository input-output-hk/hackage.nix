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
      identifier = { name = "png-chunk-yaftee"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/png-chunk-yaftee#readme";
      url = "";
      synopsis = "PNG's chunk codec on Yaftee";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/png-chunk-yaftee#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitarray-bs" or (errorHandler.buildDepError "bitarray-bs"))
          (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
          (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
          (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
          (hsPkgs."yaftee-conduit-bytestring" or (errorHandler.buildDepError "yaftee-conduit-bytestring"))
          (hsPkgs."yaftee-conduit-bytestring-ft" or (errorHandler.buildDepError "yaftee-conduit-bytestring-ft"))
          (hsPkgs."yaftee-conduit-mono-traversable" or (errorHandler.buildDepError "yaftee-conduit-mono-traversable"))
        ];
        buildable = true;
      };
      tests = {
        "png-chunk-yaftee-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitarray-bs" or (errorHandler.buildDepError "bitarray-bs"))
            (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."png-chunk-yaftee" or (errorHandler.buildDepError "png-chunk-yaftee"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
            (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
            (hsPkgs."yaftee-conduit-bytestring" or (errorHandler.buildDepError "yaftee-conduit-bytestring"))
            (hsPkgs."yaftee-conduit-bytestring-ft" or (errorHandler.buildDepError "yaftee-conduit-bytestring-ft"))
            (hsPkgs."yaftee-conduit-mono-traversable" or (errorHandler.buildDepError "yaftee-conduit-mono-traversable"))
          ];
          buildable = true;
        };
      };
    };
  }