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
        version = "0.1.11";
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
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.basic-prelude)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.word24)
        ];
      };
      exes = {
        "rtcm32json" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.rtcm)
          ];
        };
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