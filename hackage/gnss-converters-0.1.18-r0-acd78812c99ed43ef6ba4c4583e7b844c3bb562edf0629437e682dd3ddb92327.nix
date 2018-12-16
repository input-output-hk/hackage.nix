{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gnss-converters";
        version = "0.1.18";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "http://github.com/swift-nav/gnss-converters";
      url = "";
      synopsis = "GNSS Converters.";
      description = "Haskell bindings for GNSS converters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.rtcm)
          (hsPkgs.sbp)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "sbp2rtcm3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.gnss-converters)
          ];
        };
        "rtcm32sbp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.gnss-converters)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.HUnit-approx)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
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
            (hsPkgs.tasty-hunit)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }