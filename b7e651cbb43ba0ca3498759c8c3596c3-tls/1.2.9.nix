{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      compat = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tls";
          version = "1.2.9";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-tls";
        url = "";
        synopsis = "TLS/SSL protocol native implementation (Server and Client)";
        description = "Native Haskell TLS and SSL protocol implementation for server and client.\n\nThis provides a high-level implementation of a sensitive security protocol,\neliminating a common set of security issues through the use of the advanced\ntype system, high level constructions and common Haskell features.\n\nCurrently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,\nand support RSA and Ephemeral Diffie Hellman key exchanges,\nand many extensions.\n\nSome debug tools linked with tls, are available through the\n<http://hackage.haskell.org/package/tls-debug/>.";
        buildType = "Simple";
      };
      components = {
        tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.network
            hsPkgs.data-default-class
            hsPkgs.cryptohash
            hsPkgs.crypto-random
            hsPkgs.crypto-numbers
            hsPkgs.crypto-cipher-types
            hsPkgs.crypto-pubkey
            hsPkgs.crypto-pubkey-types
            hsPkgs.cipher-rc4
            hsPkgs.cipher-des
            hsPkgs.cipher-aes
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.x509-validation
          ];
        };
        tests = {
          test-tls = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.cereal
              hsPkgs.data-default-class
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.cprng-aes
              hsPkgs.crypto-pubkey
              hsPkgs.bytestring
              hsPkgs.x509
              hsPkgs.x509-validation
              hsPkgs.tls
              hsPkgs.time
              hsPkgs.crypto-random
              hsPkgs.crypto-pubkey
            ];
          };
        };
        benchmarks = {
          bench-tls = {
            depends  = [
              hsPkgs.base
              hsPkgs.tls
              hsPkgs.x509
              hsPkgs.x509-validation
              hsPkgs.data-default-class
              hsPkgs.crypto-random
              hsPkgs.criterion
              hsPkgs.cprng-aes
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.crypto-pubkey
              hsPkgs.time
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }