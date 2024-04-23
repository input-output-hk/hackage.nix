{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { xffi = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "botan-low"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leo@apotheca.io";
      author = "Leo D.";
      homepage = "";
      url = "";
      synopsis = "Low-level Botan bindings";
      description = "Welcome to botan-low\n\nLow-level bindings to the [Botan](https://botan.randombit.net/) cryptography library.\n\n> Botan's goal is to be the best option for cryptography in C++ by offering the\n> tools necessary to implement a range of practical systems, such as TLS protocol,\n> X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support,\n> password hashing, and post quantum crypto schemes.\n\nFor more information, see the [README on Github](https://github.com/apotheca/botan)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "botan-low-bcrypt-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-block-cipher-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-cipher-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-fpe-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-hash-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-hotp-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-kdf-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-keywrap-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-mac-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-mpi-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-decrypt-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-dh-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-dsa-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-ecdh-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-ecdsa-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-ed25519-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-elgamal-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-encrypt-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-keyagreement-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-keyencapsulation-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-rsa-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-sign-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-sm2-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-verify-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pubkey-x25519-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-pwdhash-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-rng-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-srp6-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-totp-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-utility-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-x509-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "botan-low-zfec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "botan-low-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }