{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tls";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-tls";
        url = "";
        synopsis = "TLS/SSL protocol native implementation (Server and Client)";
        description = "native TLS protocol implementation, focusing on purity and more type-checking.\n\nCurrently implement the SSL3.0, TLS1.0 and TLS1.1 protocol.\nNot yet properly secure and missing some features.\nDo not yet use as replacement to more mature implementation.\n\nonly RSA supported as Key exchange for now.";
        buildType = "Simple";
      };
      components = {
        tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cryptohash
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.random
            hsPkgs.AES
            hsPkgs.crypto-api
            hsPkgs.cryptocipher
            hsPkgs.certificate
          ];
        };
        exes = {
          stunnel = {
            depends  = optionals _flags.executable [
              hsPkgs.network
              hsPkgs.haskell98
            ];
          };
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.random
            ];
          };
        };
      };
    }