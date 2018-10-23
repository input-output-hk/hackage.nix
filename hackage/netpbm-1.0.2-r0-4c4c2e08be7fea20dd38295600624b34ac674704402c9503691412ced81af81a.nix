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
        name = "netpbm";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "2013 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/haskell-netpbm";
      url = "";
      synopsis = "Loading PBM, PGM, PPM image files";
      description = "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.\n\nAll netpbm image formats are implemented (P1 - P6).\n\nThe current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.\n\nCHANGELOG\n\nVersion 1.0.1\n\n* Added required Vector imports necessary for deriving Unbox instances.\n\nVersion 1.0.0\n\n* Use storable instead of unboxed vectors to allow easier integration with Ptr based APIs.";
      buildType = "Simple";
    };
    components = {
      "netpbm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.bytestring)
          (hsPkgs.storable-record)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.netpbm)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.netpbm)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }