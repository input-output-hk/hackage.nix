{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kafka-device-glut";
          version = "0.2.1.2";
        };
        license = "MIT";
        copyright = "(c) 2016-17 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/functionally/kafka-device-glut";
        url = "https://bitbucket.org/functionally/kafka-device-glut/downloads/kafka-device-glut-\$version.tar.gz";
        synopsis = "GLUT events via a Kafka message broker";
        description = "This package contains functions for passing GLUT events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
        buildType = "Simple";
      };
      components = {
        "kafka-device-glut" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GLUT
            hsPkgs.kafka-device
            hsPkgs.OpenGL
          ];
        };
        exes = {
          "kafka-device-glut" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
              hsPkgs.kafka-device
              hsPkgs.OpenGL
            ];
          };
        };
      };
    }