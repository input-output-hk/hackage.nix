{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      fast-bignum = true;
      homebrew-openssl = false;
      macports-openssl = false;
    } // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "HsOpenSSL";
          version = "0.11.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
        author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
        homepage = "https://github.com/vshabanov/HsOpenSSL";
        url = "";
        synopsis = "Partial OpenSSL binding for Haskell";
        description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
        buildType = "Custom";
      };
      components = {
        HsOpenSSL = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.time
          ] ++ (if _flags.fast-bignum && compiler.isGhc
            then [ hsPkgs.integer-gmp ]
            else [
              hsPkgs.ghc-prim
              hsPkgs.integer
            ]);
          libs = if system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto pkgs.ssl ];
        };
        tests = {
          test-cipher = {
            depends  = [
              hsPkgs.HsOpenSSL
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-dsa = {
            depends  = [
              hsPkgs.HsOpenSSL
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-der = {
            depends  = [
              hsPkgs.HsOpenSSL
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
          test-evp-base64 = {
            depends  = [
              hsPkgs.HsOpenSSL
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }