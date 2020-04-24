{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { compat = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tls"; version = "1.2.13"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
          (hsPkgs."crypto-numbers" or ((hsPkgs.pkgs-errors).buildDepError "crypto-numbers"))
          (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
          (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
          (hsPkgs."cipher-rc4" or ((hsPkgs.pkgs-errors).buildDepError "cipher-rc4"))
          (hsPkgs."cipher-des" or ((hsPkgs.pkgs-errors).buildDepError "cipher-des"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ];
        buildable = true;
        };
      tests = {
        "test-tls" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-tls" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }