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
      specVersion = "1.12";
      identifier = {
        name = "eventsource-geteventstore-store";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "GetEventStore store implementation.";
      description = "GetEventStore store implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."eventsource-api" or (errorHandler.buildDepError "eventsource-api"))
          (hsPkgs."eventsource-store-specs" or (errorHandler.buildDepError "eventsource-store-specs"))
          (hsPkgs."eventstore" or (errorHandler.buildDepError "eventstore"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
      tests = {
        "geteventstore-store-test-suite" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eventsource-api" or (errorHandler.buildDepError "eventsource-api"))
            (hsPkgs."eventsource-geteventstore-store" or (errorHandler.buildDepError "eventsource-geteventstore-store"))
            (hsPkgs."eventsource-store-specs" or (errorHandler.buildDepError "eventsource-store-specs"))
            (hsPkgs."eventstore" or (errorHandler.buildDepError "eventstore"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
          buildable = true;
        };
      };
    };
  }