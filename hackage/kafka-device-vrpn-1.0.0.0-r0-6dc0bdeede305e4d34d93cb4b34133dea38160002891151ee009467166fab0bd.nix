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
      identifier = { name = "kafka-device-vrpn"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2016-19 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/kafka-device-vrpn";
      url = "https://bitbucket.org/functionally/kafka-device-vrpn/downloads/kafka-device-vrpn-$version.tar.gz";
      synopsis = "VRPN events via a Kafka message broker";
      description = "This package contains functions for passing VRPN \\<<https://github.com/vrpn/vrpn/wiki>\\> events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
          (hsPkgs."vrpn" or (errorHandler.buildDepError "vrpn"))
          ];
        buildable = true;
        };
      exes = {
        "kafka-device-vrpn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
            (hsPkgs."vrpn" or (errorHandler.buildDepError "vrpn"))
            ];
          buildable = true;
          };
        };
      };
    }