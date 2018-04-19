{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kafka-device-spacenav";
          version = "0.2.1.0";
        };
        license = "MIT";
        copyright = "(c) 2016-17 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/functionally/kafka-device-spacenav";
        url = "https://bitbucket.org/functionally/kafka-device-spacenav/downloads/kafka-device-spacenav-0.1.5.0.tar.gz";
        synopsis = "Linux SpaceNavigator events via a Kafka message broker";
        description = "This package contains functions for passing Linux device events from a SpaceNavigator \\<<http://www.3dconnexion.com/products/spacemouse/spacenavigator.html>\\> to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
        buildType = "Simple";
      };
      components = {
        kafka-device-spacenav = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.kafka-device
            hsPkgs.milena
          ];
        };
        exes = {
          kafka-device-spacenav = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.kafka-device
              hsPkgs.linear
              hsPkgs.milena
              hsPkgs.yaml
            ];
          };
        };
      };
    }