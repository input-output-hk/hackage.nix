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
        name = "rtcm";
        version = "0.1.4";
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
      "rtcm" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.word24)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.random)
            (hsPkgs.rtcm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.word24)
          ];
        };
      };
    };
  }