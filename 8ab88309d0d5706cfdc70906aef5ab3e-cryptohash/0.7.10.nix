{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
      cryptoapi = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cryptohash";
          version = "0.7.10";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cryptohash";
        url = "";
        synopsis = "collection of crypto hashes, fast, pure and practical";
        description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.";
        buildType = "Simple";
      };
      components = {
        cryptohash = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optionals _flags.cryptoapi [
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          Bench = {
            depends  = pkgs.lib.optionals _flags.benchmark [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.cryptohash
            ];
          };
        };
        tests = {
          test-kat = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.cryptohash
            ];
          };
        };
      };
    }