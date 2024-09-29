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
      specVersion = "2.4";
      identifier = { name = "macaroon-shop"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ics@gambolingpangolin.com";
      author = "Ian Shipman";
      homepage = "https://github.com/GambolingPangolin/macaroon-shop";
      url = "";
      synopsis = "A toolkit for working with macaroons";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "macaroon-shop-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."macaroon-shop" or (errorHandler.buildDepError "macaroon-shop"))
          ];
          buildable = true;
        };
      };
    };
  }