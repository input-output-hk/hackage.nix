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
      identifier = { name = "kafka-device-leap"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/kafka-device-leap";
      url = "https://bitbucket.org/functionally/kafka-device-leap/downloads/kafka-device-leap-0.1.3.0.tar.gz";
      synopsis = "Leap Motion events via a Kafka message broker";
      description = "This package contains functions for passing Leap Motion \\<<https://www.leapmotion.com/product/desktop>\\> events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<https://hackage.haskell.org/package/kafka-device/>\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hleap" or (errorHandler.buildDepError "hleap"))
          (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
          (hsPkgs."milena" or (errorHandler.buildDepError "milena"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      exes = {
        "kafka-device-leap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hleap" or (errorHandler.buildDepError "hleap"))
            (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
            (hsPkgs."milena" or (errorHandler.buildDepError "milena"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      };
    }