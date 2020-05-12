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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cipher-aes"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cipher-aes";
      url = "";
      synopsis = "Fast AES cipher implementation with advanced mode of operations";
      description = "Fast AES cipher implementation with advanced mode of operations.\n\nThe modes of operations available are ECB (Electronic code book),\nCBC (Cipher block chaining), CTR (Counter), XTS (XEX with ciphertext stealing),\nGCM (Galois Counter Mode).\n\nThe AES implementation uses AES-NI when available (on x86 and x86-64 architecture),\nbut fallback gracefully to a software C implementation.\n\nThe software implementation uses S-Boxes, which might suffer for cache timing issues.\nHowever do notes that most other known software implementations, including very popular\none (openssl, gnutls) also uses similar implementation. If it matters for your\ncase, you should make sure you have AES-NI available, or you'll need to use a different\nimplementation.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
          ];
        buildable = true;
        };
      tests = {
        "test-cipher-aes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
            (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-tests" or (errorHandler.buildDepError "crypto-cipher-tests"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cipher-aes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
            (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-benchmarks" or (errorHandler.buildDepError "crypto-cipher-benchmarks"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }