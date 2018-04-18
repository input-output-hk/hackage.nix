{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      halvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cipher-aes128";
          version = "0.7.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas M. DuBuisson";
        maintainer = "thomas.dubuisson@gmail.com";
        author = "Thomas M. DuBuisson, Vincent Hanquez (See AUTHORS file)";
        homepage = "https://github.com/TomMD/cipher-aes128";
        url = "";
        synopsis = "AES and common modes using AES-NI when available.";
        description = "Cipher-aes128 is an implementation of AES and common modes of operation.  It borrows Hanquez's C AES code (see 'cipher-aes') but\nis unique due to including compile-time detection of\nNI compiler support, a slightly more functional interface\nfor GCM operations, exposure of 'Ptr' based operations via the .Internal module, and build-in crypto-api support.\nCipher-aes128 was originally developed as \"'cipher-aes' plus trampolines\", which has since been adopted into cipher-aes.";
        buildType = "Custom";
      };
      components = {
        cipher-aes128 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          aes128_test = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.crypto-api-tests
              hsPkgs.test-framework
              hsPkgs.cipher-aes128
              hsPkgs.bytestring
              hsPkgs.tagged
              hsPkgs.cereal
              hsPkgs.crypto-api
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.crypto-api
              hsPkgs.entropy
              hsPkgs.bytestring
              hsPkgs.tagged
              hsPkgs.cereal
            ];
          };
        };
      };
    }