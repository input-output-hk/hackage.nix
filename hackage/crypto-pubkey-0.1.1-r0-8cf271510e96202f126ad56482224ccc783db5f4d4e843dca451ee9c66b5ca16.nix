{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { benchmark = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-pubkey"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-pubkey";
      url = "";
      synopsis = "Public Key cryptography";
      description = "Public Key cryptography\n\nSupports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.\n\nAlso have primitive support for Diffie Hellman, and ElGamal encryption";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."crypto-random-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random-api"))
          (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."crypto-numbers" or ((hsPkgs.pkgs-errors).buildDepError "crypto-numbers"))
          ];
        buildable = true;
        };
      tests = {
        "test-crypto-pubkey" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            (hsPkgs."crypto-numbers" or ((hsPkgs.pkgs-errors).buildDepError "crypto-numbers"))
            (hsPkgs."crypto-random-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random-api"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-crypto-pubkey" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."crypto-random-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random-api"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }