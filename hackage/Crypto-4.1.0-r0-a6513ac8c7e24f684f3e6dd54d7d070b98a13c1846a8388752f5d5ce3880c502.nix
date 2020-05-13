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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Crypto"; version = "4.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Dominic Steinitz 2003 - 2007";
      maintainer = "dominic.steinitz@blueyonder.co.uk";
      author = "Dominic Steinitz";
      homepage = "";
      url = "";
      synopsis = "DES, Blowfish, AES, TEA, SHA1, MD5, RSA, BubbleBabble,\nHexdump, Support for Word128, Word192 and Word256 and Beyond, PKCS5\nPadding, Various Encryption Modes e.g. Cipher Block Chaining all in one package.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "SymmetricTest" = { buildable = true; };
        "SHA1Test" = { buildable = true; };
        "RSATest" = { buildable = true; };
        "QuickTest" = { buildable = true; };
        "HMACTest" = { buildable = true; };
        };
      };
    }