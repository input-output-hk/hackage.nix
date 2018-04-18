{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      support_aesni = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cipher-aes";
          version = "0.2.11";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-cipher-aes";
        url = "";
        synopsis = "Fast AES cipher implementation with advanced mode of operations";
        description = "Fast AES cipher implementation with advanced mode of operations.\n\nThe modes of operations available are ECB (Electronic code book),\nCBC (Cipher block chaining), CTR (Counter), XTS (XEX with ciphertext stealing),\nGCM (Galois Counter Mode).\n\nThe AES implementation uses AES-NI when available (on x86 and x86-64 architecture),\nbut fallback gracefully to a software C implementation.\n\nThe software implementation uses S-Boxes, which might suffer for cache timing issues.\nHowever do notes that most other known software implementations, including very popular\none (openssl, gnutls) also uses similar implementation. If it matters for your\ncase, you should make sure you have AES-NI available, or you'll need to use a different\nimplementation.\n";
        buildType = "Simple";
      };
      components = {
        cipher-aes = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.securemem
            hsPkgs.crypto-cipher-types
          ];
        };
        tests = {
          test-cipher-aes = {
            depends  = [
              hsPkgs.base
              hsPkgs.cipher-aes
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-tests
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          bench-cipher-aes = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cipher-aes
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-benchmarks
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
        };
      };
    }