{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mqtt";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-mqtt";
      url = "";
      synopsis = "An MQTT protocol implementation.";
      description = "This project aims to supply a rock-solid MQTT implementation suitable for\nproduction use.";
      buildType = "Simple";
    };
    components = {
      "mqtt" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.socket)
          (hsPkgs.tls)
          (hsPkgs.uuid)
          (hsPkgs.case-insensitive)
          (hsPkgs.x509)
          (hsPkgs.x509-validation)
          (hsPkgs.websockets)
          (hsPkgs.hslogger)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.exceptions)
            (hsPkgs.mqtt)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.network-uri)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.uuid)
          ];
        };
        "priority-semaphore" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mqtt)
          ];
        };
        "retained-store-strictness-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mqtt)
          ];
        };
        "routing-tree-size-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mqtt)
            (hsPkgs.random)
          ];
        };
      };
      benchmarks = {
        "topic-matching" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.criterion)
            (hsPkgs.mqtt)
            (hsPkgs.text)
          ];
        };
        "binary" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.criterion)
            (hsPkgs.mqtt)
            (hsPkgs.text)
          ];
        };
      };
    };
  }