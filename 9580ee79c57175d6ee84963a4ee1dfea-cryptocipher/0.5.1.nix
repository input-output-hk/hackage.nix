{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cryptocipher";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-crypto-cipher";
        url = "";
        synopsis = "Symmetrical block and stream ciphers.";
        description = "Symmetrical block and stream ciphers.\n\nThis package is eventually going away in this form, and should be considered deprecated.\nuse 'cipher-aes' for AES. For blowfish, camellia, DES/3DES, the package is still maintained,\nbut eventually each cipher will be available in another package.";
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
            hsPkgs.cipher-aes
            hsPkgs.cipher-rc4
            hsPkgs.crypto-api
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