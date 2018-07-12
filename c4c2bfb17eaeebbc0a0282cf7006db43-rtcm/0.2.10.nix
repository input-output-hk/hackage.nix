{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "rtcm";
          version = "0.2.10";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015-2017 Swift Navigation, Inc.";
        maintainer = "Swift Navigation <dev@swift-nav.com>";
        author = "Mark Fine <mark@swift-nav.com>, Joshua Gross <josh@swift-nav.com>";
        homepage = "http://github.com/swift-nav/librtcm";
        url = "";
        synopsis = "RTCM Library.";
        description = "Haskell bindings for Radio Technical Commission For Maritime\nServices (RTCM) standard, supporting GPS, GLONASS, Galileo and other\nsatellite-based position systems operation with one reference\nstation or a network.";
        buildType = "Simple";
      };
      components = {
        "rtcm" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.array
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.basic-prelude
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.word24
          ];
        };
        exes = {
          "rtcm32json" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.rtcm
            ];
          };
          "json2rtcm3" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.binary-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.rtcm
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.random
              hsPkgs.rtcm
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.word24
            ];
          };
        };
      };
    }