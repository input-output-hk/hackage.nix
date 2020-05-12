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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hOpenPGP"; version = "0.6.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2012-2013  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hOpenPGP/";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-conduit" or (errorHandler.buildDepError "cereal-conduit"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."openpgp-asciiarmor" or (errorHandler.buildDepError "openpgp-asciiarmor"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hOpenPGP" or (errorHandler.buildDepError "hOpenPGP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cereal-conduit" or (errorHandler.buildDepError "cereal-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = true;
          };
        };
      };
    }