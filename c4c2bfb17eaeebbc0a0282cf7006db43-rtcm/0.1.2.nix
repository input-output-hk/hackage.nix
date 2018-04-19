{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rtcm";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "http://github.com/swift-nav/librtcm";
        url = "";
        synopsis = "RTCM Library.";
        description = "Haskell bindings for Radio Technical Commission For Maritime\nServices (RTCM) standard, supporting GPS, GLONASS, Galileo and other\nsatellite-based position systems operation with one reference\nstation or a network.";
        buildType = "Simple";
      };
      components = {
        rtcm = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.word24
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.rtcm
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.criterion
              hsPkgs.rtcm
            ];
          };
        };
      };
    }