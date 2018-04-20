{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "haskoin-crypto";
          version = "0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "plaprade+hackage@gmail.com";
        author = "Philippe Laprade";
        homepage = "http://github.com/plaprade/haskoin-crypto";
        url = "";
        synopsis = "Implementation of Bitcoin cryptographic primitives.";
        description = "This package provides the elliptic curve cryptography required for creating\nand validating bitcoin transactions. It also provides SHA-256 and RIPEMD-160\nhashing functions.";
        buildType = "Simple";
      };
      components = {
        haskoin-crypto = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.cryptohash
            hsPkgs.haskoin-util
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          test-haskoin-crypto = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.cryptohash
              hsPkgs.haskoin-util
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
        benchmarks = {
          bench-haskoin-crypto = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.cryptohash
              hsPkgs.haskoin-util
              hsPkgs.time
              hsPkgs.random
            ];
          };
        };
      };
    }