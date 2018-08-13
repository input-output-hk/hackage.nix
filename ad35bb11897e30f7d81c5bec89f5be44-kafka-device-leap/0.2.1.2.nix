{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kafka-device-leap";
        version = "0.2.1.2";
      };
      license = "MIT";
      copyright = "(c) 2016-17 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/kafka-device-leap";
      url = "https://bitbucket.org/functionally/kafka-device-leap/downloads/kafka-device-leap-\$version.tar.gz";
      synopsis = "Leap Motion events via a Kafka message broker";
      description = "This package contains functions for passing Leap Motion \\<<https://www.leapmotion.com/product/desktop>\\> events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<https://hackage.haskell.org/package/kafka-device/>\\>.";
      buildType = "Simple";
    };
    components = {
      "kafka-device-leap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.hleap)
          (hsPkgs.kafka-device)
          (hsPkgs.websockets)
        ];
      };
      exes = {
        "kafka-device-leap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hleap)
            (hsPkgs.kafka-device)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }