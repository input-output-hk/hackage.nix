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
      specVersion = "1.24";
      identifier = { name = "kafka-client-sync"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Felix Mulder";
      maintainer = "felix.mulder@gmail.com";
      author = "Felix Mulder";
      homepage = "";
      url = "";
      synopsis = "Synchronous Kafka Client";
      description = "A synchronous API on top of librdkafka using hw-kafka-client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
          ];
        buildable = true;
        };
      tests = {
        "kafka-client-sync-tests" = {
          depends = [
            (hsPkgs."kafka-client-sync" or (errorHandler.buildDepError "kafka-client-sync"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }