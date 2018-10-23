{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "gnss-converters";
        version = "0.3.11";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016, 2017 Swift Navigation, Inc.";
      maintainer = "Swift Navigation <dev@swiftnav.com>";
      author = "Mark Fine <mark@swiftnav.com>, Joshua Gross <josh@swiftnav.com>";
      homepage = "http://github.com/swift-nav/gnss-converters";
      url = "";
      synopsis = "GNSS Converters.";
      description = "Haskell bindings for GNSS converters.";
      buildType = "Simple";
    };
    components = {
      "gnss-converters" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.rtcm)
          (hsPkgs.sbp)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "sbp2rtcm3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.gnss-converters)
          ];
        };
        "rtcm32sbp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.gnss-converters)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.gnss-converters)
            (hsPkgs.lens)
            (hsPkgs.resourcet)
            (hsPkgs.rtcm)
            (hsPkgs.sbp)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }