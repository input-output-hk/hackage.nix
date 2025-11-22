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
        name = "yaftee-conduit-bytestring-ft";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/yaftee-conduit-bytestring-ft#readme";
      url = "";
      synopsis = "Finger tree-based byte string tools for Yaftee Conduit";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/yaftee-conduit-bytestring-ft#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
          (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
          (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
          (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
        ];
        buildable = true;
      };
      tests = {
        "yaftee-conduit-bytestring-ft-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring-ft" or (errorHandler.buildDepError "bytestring-ft"))
            (hsPkgs."higher-order-open-union" or (errorHandler.buildDepError "higher-order-open-union"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
            (hsPkgs."yaftee" or (errorHandler.buildDepError "yaftee"))
            (hsPkgs."yaftee-basic-monads" or (errorHandler.buildDepError "yaftee-basic-monads"))
            (hsPkgs."yaftee-conduit" or (errorHandler.buildDepError "yaftee-conduit"))
            (hsPkgs."yaftee-conduit-bytestring-ft" or (errorHandler.buildDepError "yaftee-conduit-bytestring-ft"))
          ];
          buildable = true;
        };
      };
    };
  }