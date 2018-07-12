{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-iot-dataplane";
          version = "1.3.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon IoT Data Plane SDK.";
        description = "AWS IoT (Beta)\n__AWS IoT is considered a beta service as defined in the Service Terms__\nAWS IoT-Data enables secure, bi-directional communication between\nInternet-connected things (such as sensors, actuators, embedded devices,\nor smart appliances) and the AWS cloud. It implements a broker for\napplications and things to publish messages over HTTP (Publish) and\nretrieve, update, and delete thing shadows. A thing shadow is a\npersistent representation of your things and their state in the AWS\ncloud.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.IoTDataPlane\" and the <https://aws.amazon.com/iot AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        "amazonka-iot-dataplane" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          "amazonka-iot-dataplane-test" = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-iot-dataplane
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }