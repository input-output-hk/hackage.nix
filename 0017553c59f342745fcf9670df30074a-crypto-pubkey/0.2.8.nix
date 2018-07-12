{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "crypto-pubkey";
          version = "0.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-crypto-pubkey";
        url = "";
        synopsis = "Public Key cryptography";
        description = "Public Key cryptography\n\nSupports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.\n\nAlso have primitive support for Diffie Hellman, and ElGamal encryption";
        buildType = "Simple";
      };
      components = {
        "crypto-pubkey" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.crypto-random
            hsPkgs.crypto-pubkey-types
            hsPkgs.cryptohash
            hsPkgs.crypto-numbers
          ];
        };
        tests = {
          "test-crypto-pubkey" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.cryptohash
              hsPkgs.crypto-pubkey
              hsPkgs.crypto-pubkey-types
              hsPkgs.crypto-numbers
              hsPkgs.crypto-random
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-kat
            ];
          };
        };
        benchmarks = {
          "bench-crypto-pubkey" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.crypto-random
              hsPkgs.crypto-pubkey
              hsPkgs.crypto-pubkey-types
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.deepseq
            ];
          };
        };
      };
    }