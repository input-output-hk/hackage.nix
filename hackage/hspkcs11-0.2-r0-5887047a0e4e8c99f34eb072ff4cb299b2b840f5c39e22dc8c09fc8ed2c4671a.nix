{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspkcs11"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "denisenkom@gmail.com";
      author = "Mikhail Denisenko";
      homepage = "https://github.com/denisenkom/hspkcs11";
      url = "";
      synopsis = "Wrapper for PKCS #11 interface";
      description = "This package allows to call PKCS#11 provider libraries.  PKCS#11 is a C interface specification for cryptography providers, such as crypto tokens and HSMs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "pkcs11-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."testpack" or ((hsPkgs.pkgs-errors).buildDepError "testpack"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
            ];
          buildable = true;
          };
        };
      };
    }