{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Crypto";
          version = "3.0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Dominic Steinitz 2003 - 2006";
        maintainer = "dominic.steinitz@blueyonder.co.uk";
        author = "Dominic Steinitz";
        homepage = "";
        url = "";
        synopsis = "DES, Blowfish, AES, SHA1, MD5, RSA, X.509 Identity\nand Attribute Certificates, General ASN.1 Support, Base64, PKCS8,\nPKCS1v15, Hexdump, Support for Word128, Word192 and Word256 and Beyond, PKCS5\nPadding, Various Encryption Modes e.g. Cipher Block Chaining all in one package.";
        description = "";
        buildType = "Custom";
      };
      components = {
        "Crypto" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.NewBinary
          ];
        };
        exes = {
          "BERTest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "X509Example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "PKCS8Example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "AttributeCertificate" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "RSAEncryptionExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "RSAVerifyExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "SymmetricTest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "RSATest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
          "QuickTest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.NewBinary
            ];
          };
        };
      };
    }