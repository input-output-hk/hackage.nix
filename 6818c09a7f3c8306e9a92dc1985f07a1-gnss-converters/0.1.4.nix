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
        name = "gnss-converters";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
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
          (hsPkgs.conduit-extra)
          (hsPkgs.lens)
          (hsPkgs.rtcm)
          (hsPkgs.sbp)
          (hsPkgs.time)
        ];
      };
      exes = {
        "sbp2rtcm3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
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
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.gnss-converters)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.criterion)
            (hsPkgs.gnss-converters)
          ];
        };
      };
    };
  }