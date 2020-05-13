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
      specVersion = "1.10";
      identifier = { name = "kafka-client"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Abhinav Gupta <mail@abhinavg.net>";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/haskell-kafka-client";
      url = "";
      synopsis = "Low-level Haskell client library for Apache Kafka 0.7.";
      description = "This package implements a low-level client client library to interface\nwith <http://kafka.apache.org/ Apache Kafka> 0.7.\n\n__Kafka 0.8 and newer are not yet supported.__";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."kafka-client" or (errorHandler.buildDepError "kafka-client"))
            ];
          buildable = true;
          };
        };
      };
    }