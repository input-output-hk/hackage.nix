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
      identifier = { name = "kafka-device-leap"; version = "1.0.2.1"; };
      license = "MIT";
      copyright = "(c) 2016-19 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/kafka-device-leap";
      url = "https://bitbucket.org/functionally/kafka-device-leap/downloads/kafka-device-leap-$version.tar.gz";
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
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      };
    }