let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      support_aesni = true;
      support_pclmuldq = false;
      integer-gmp = true;
      support_deepseq = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptonite"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/cryptonite";
      url = "";
      synopsis = "Cryptography Primitives sink";
      description = "A repository of cryptographic primitives.\n\n* Symmetric ciphers: AES, DES, 3DES, Blowfish, Camellia, RC4, Salsa, ChaCha.\n\n* Hash: SHA1, SHA2, SHA3, MD2, MD4, MD5, Kekkak, Skein, Ripemd, Tiger, Whirlpool\n\n* MAC: HMAC, Poly1305\n\n* Assymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Ed25519\n\n* Key Derivation Function: PBKDF2, Scrypt\n\n* Cryptographic Random generation: System Entropy, Deterministic Random Generator\n\n* Data related: Anti-Forensic Information Splitter (AFIS)\n\nIf anything cryptographic related is missing from here, submit\na pull request to have it added. This package strive to be a\ncryptographic kitchen sink that provides cryptography for everyone.\n\nEvaluate the security related to your requirements before using.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (pkgs.lib).optional (compiler.isGhc && true && flags.integer-gmp) (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))) ++ (pkgs.lib).optional (flags.support_deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."advapi32" or (sysDepError "advapi32"));
        };
      tests = {
        "test-cryptonite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-kat" or (buildDepError "tasty-kat"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            ];
          };
        };
      };
    }