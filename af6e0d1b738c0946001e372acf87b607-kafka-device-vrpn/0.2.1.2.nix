{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kafka-device-vrpn";
          version = "0.2.1.2";
        };
        license = "MIT";
        copyright = "(c) 2016-17 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/functionally/kafka-device-vrpn";
        url = "https://bitbucket.org/functionally/kafka-device-vrpn/downloads/kafka-device-vrpn-\$version.tar.gz";
        synopsis = "VRPN events via a Kafka message broker";
        description = "This package contains functions for passing VRPN \\<<https://github.com/vrpn/vrpn/wiki>\\> events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
        buildType = "Simple";
      };
      components = {
        kafka-device-vrpn = {
          depends  = [
            hsPkgs.base
            hsPkgs.kafka-device
            hsPkgs.vrpn
          ];
        };
        exes = {
          kafka-device-vrpn = {
            depends  = [
              hsPkgs.base
              hsPkgs.kafka-device
              hsPkgs.vrpn
            ];
          };
        };
      };
    }