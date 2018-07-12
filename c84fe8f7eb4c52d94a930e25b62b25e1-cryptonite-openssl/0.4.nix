{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptonite-openssl";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/haskell-crypto/cryptonite-openssl";
        url = "";
        synopsis = "Crypto stuff using OpenSSL cryptographic library";
        description = "cryptography";
        buildType = "Simple";
      };
      components = {
        "cryptonite-openssl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.memory
            hsPkgs.cryptonite
          ];
          libs = if system.isWindows || system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto ];
        };
        tests = {
          "test-cryptonite-openssl" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-kat
              hsPkgs.cryptonite
              hsPkgs.cryptonite-openssl
            ];
          };
        };
      };
    }