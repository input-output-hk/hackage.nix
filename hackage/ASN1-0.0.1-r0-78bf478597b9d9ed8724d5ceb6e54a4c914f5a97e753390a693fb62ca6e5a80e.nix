{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "ASN1"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2003 - 2007";
      maintainer = "dominic.steinitz@blueyonder.co.uk";
      author = "Dominic Steinitz";
      homepage = "http://www.haskell.org/asn1";
      url = "";
      synopsis = "General ASN.1 support.";
      description = "Enough ASN.1 suppport for X.509\nidentity and attribute certificates, PKCS8, PKCS1v15.\nOnly the Basic Encoding Rules (BER) are supported.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
          ];
        buildable = true;
        };
      exes = {
        "BERTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
            ];
          buildable = true;
          };
        "BERTest2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
            ];
          buildable = true;
          };
        "X509Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
            ];
          buildable = true;
          };
        "PKCS8Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
            ];
          buildable = true;
          };
        "AttributeCertificate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."NewBinary" or ((hsPkgs.pkgs-errors).buildDepError "NewBinary"))
            ];
          buildable = true;
          };
        };
      };
    }