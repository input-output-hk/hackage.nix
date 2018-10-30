{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      support_aesni = true;
      support_rdrand = true;
      support_pclmuldq = false;
      support_blake2_sse = false;
      integer-gmp = true;
      support_deepseq = true;
      old_toolchain_inliner = false;
      check_alignment = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cryptonite";
        version = "0.21";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-crypto/cryptonite";
      url = "";
      synopsis = "Cryptography Primitives sink";
      description = "A repository of cryptographic primitives.\n\n* Symmetric ciphers: AES, DES, 3DES, Blowfish, Camellia, RC4, Salsa, XSalsa, ChaCha.\n\n* Hash: SHA1, SHA2, SHA3, MD2, MD4, MD5, Keccak, Skein, Ripemd, Tiger, Whirlpool, Blake2\n\n* MAC: HMAC, Poly1305\n\n* Asymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Ed25519, Ed448\n\n* Key Derivation Function: PBKDF2, Scrypt, HKDF\n\n* Cryptographic Random generation: System Entropy, Deterministic Random Generator\n\n* Data related: Anti-Forensic Information Splitter (AFIS)\n\nIf anything cryptographic related is missing from here, submit\na pull request to have it added. This package strive to be a\ncryptographic kitchen sink that provides cryptography for everyone.\n\nEvaluate the security related to your requirements before using.\n\nRead \"Crypto.Tutorial\" for a quick start guide.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.memory)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optional (compiler.isGhc && true && flags.integer-gmp) (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (flags.support_deepseq) (hsPkgs.deepseq);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."advapi32");
      };
      tests = {
        "test-cryptonite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.memory)
            (hsPkgs.byteable)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-kat)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }