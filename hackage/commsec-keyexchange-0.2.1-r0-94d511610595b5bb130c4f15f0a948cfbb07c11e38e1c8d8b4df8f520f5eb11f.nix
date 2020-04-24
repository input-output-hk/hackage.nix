{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "commsec-keyexchange"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "https://github.com/TomMD/commsec-keyExchange";
      url = "";
      synopsis = "Key agreement for commsec.";
      description = "Use RSA keys to authenticate a key exchange to\nestablish a commsec 'Connection'.  This package comes with\nthe same warnings as 'commsec': There is minimal testing\nand no code review.  Use at your own risk.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
          (hsPkgs."cipher-aes128" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes128"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."commsec" or ((hsPkgs.pkgs-errors).buildDepError "commsec"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."cryptohash-cryptoapi" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
          (hsPkgs."monadcryptorandom" or ((hsPkgs.pkgs-errors).buildDepError "monadcryptorandom"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          ];
        buildable = true;
        };
      };
    }