{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Crypto";
        version = "4.2.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Dominic Steinitz 2003 - 2007";
      maintainer = "Caylee Hogg <caylee.hogg@gmail.com>";
      author = "Dominic Steinitz";
      homepage = "";
      url = "";
      synopsis = "Collects together existing Haskell cryptographic functions into a package";
      description = "DES, Blowfish, AES, TEA, SHA1, MD5, RSA, BubbleBabble,\nHexdump, Support for Word128, Word192 and Word256 and Beyond, PKCS5\nPadding, Various Encryption Modes e.g. Cipher Block Chaining all in one package,\nwith HUnit and QuickCheck tests, and examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.pretty)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "SymmetricTest" = {};
        "SHA1Test" = {};
        "RSATest" = {};
        "QuickTest" = {};
        "HMACTest" = {};
        "WordListTest" = {};
      };
    };
  }