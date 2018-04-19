{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
      aesni = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cryptocipher";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cryptocipher";
        url = "";
        synopsis = "Symmetrical Block, Stream and PubKey Ciphers";
        description = "Symmetrical Block, Stream and PubKey Ciphers";
        buildType = "Simple";
      };
      components = {
        cryptocipher = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.cpu
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.crypto-api
            hsPkgs.crypto-pubkey-types
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          Benchmarks = {
            depends  = pkgs.lib.optionals _flags.benchmark [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.crypto-api
              hsPkgs.cryptocipher
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          test-cryptocipher = {
            depends  = [
              hsPkgs.base
              hsPkgs.crypto-api
              hsPkgs.cryptocipher
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.vector
              hsPkgs.entropy
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }