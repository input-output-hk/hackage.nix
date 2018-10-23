{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "ASN1";
        version = "0.0.1";
      };
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
      "ASN1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.NewBinary)
        ];
      };
      exes = {
        "BERTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.NewBinary)
          ];
        };
        "BERTest2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.NewBinary)
          ];
        };
        "X509Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.NewBinary)
          ];
        };
        "PKCS8Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.NewBinary)
          ];
        };
        "AttributeCertificate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.NewBinary)
          ];
        };
      };
    };
  }