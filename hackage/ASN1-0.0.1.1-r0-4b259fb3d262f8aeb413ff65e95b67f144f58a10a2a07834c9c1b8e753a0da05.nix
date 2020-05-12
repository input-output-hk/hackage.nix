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
      identifier = { name = "ASN1"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2003 - 2007";
      maintainer = "dominic.steinitz@blueyonder.co.uk";
      author = "Dominic Steinitz";
      homepage = "http://www.haskell.org/asn1";
      url = "";
      synopsis = "ASN.1 support for Haskell";
      description = "Enough ASN.1 suppport for X.509\nidentity and attribute certificates, PKCS8, PKCS1v15.\nOnly the Basic Encoding Rules (BER) are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."NewBinary" or (errorHandler.buildDepError "NewBinary"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }