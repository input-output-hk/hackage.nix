{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kafka-device-joystick";
          version = "0.2.1.2";
        };
        license = "MIT";
        copyright = "(c) 2016-17 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/functionally/kafka-device-joystick";
        url = "https://bitbucket.org/functionally/kafka-device-joystick/downloads/kafka-device-joystick-\$version.tar.gz";
        synopsis = "Linux joystick events via a Kafka message broker";
        description = "This package contains functions for passing Linux joystick events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  The joystick's driver must conform to the Linux Joystick API \\<<https://www.kernel.org/doc/Documentation/input/joystick-api.txt>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
        buildType = "Simple";
      };
      components = {
        kafka-device-joystick = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.kafka-device
          ];
        };
        exes = {
          kafka-device-joystick = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.kafka-device
              hsPkgs.yaml
            ];
          };
        };
      };
    }