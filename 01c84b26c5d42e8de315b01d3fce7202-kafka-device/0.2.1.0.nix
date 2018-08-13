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
        name = "kafka-device";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "(c) 2016-17 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/kafka-device";
      url = "https://bitbucket.org/functionally/kafka-device/downloads/kafka-device-0.1.5.0.tar.gz";
      synopsis = "UI device events via a Kafka message broker";
      description = "This package contains functions for passing UI device events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device-joystick/>\\>, \\<<https://hackage.haskell.org/package/kafka-device-glut/>\\>, \\<<https://hackage.haskell.org/package/kafka-device-spacenav/>\\>, \\<<https://hackage.haskell.org/package/kafka-device-leap/>\\>.";
      buildType = "Simple";
    };
    components = {
      "kafka-device" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.linear)
          (hsPkgs.milena)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "kafka-device" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.linear)
            (hsPkgs.milena)
            (hsPkgs.mtl)
          ];
        };
        "kafka-device-keyboard" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.linear)
            (hsPkgs.milena)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }