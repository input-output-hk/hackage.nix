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
    flags = { compat = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tls"; version = "1.2.8"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."crypto-numbers" or (errorHandler.buildDepError "crypto-numbers"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
          (hsPkgs."cipher-des" or (errorHandler.buildDepError "cipher-des"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      tests = {
        "test-tls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
            (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-tls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }