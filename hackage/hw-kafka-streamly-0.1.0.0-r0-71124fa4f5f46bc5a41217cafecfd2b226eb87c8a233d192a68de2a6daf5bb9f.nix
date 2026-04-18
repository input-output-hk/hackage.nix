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
      specVersion = "3.4";
      identifier = { name = "hw-kafka-streamly"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026 Nadeem Bitar";
      maintainer = "Nadeem Bitar";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/hw-kafka-streamly";
      url = "";
      synopsis = "Streamly bindings for hw-kafka-client";
      description = "Streamly streaming integration for hw-kafka-client, a Haskell\nbinding to Apache Kafka via librdkafka. Provides composable stream\nsources for consuming and fold-based sinks for producing, with safe\nresource management.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
        ];
        buildable = true;
      };
      tests = {
        "hw-kafka-streamly-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
            (hsPkgs."hw-kafka-streamly" or (errorHandler.buildDepError "hw-kafka-streamly"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }