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
      specVersion = "1.8";
      identifier = { name = "openpgp-crypto-api"; version = "0.6.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/OpenPGP-CryptoAPI";
      url = "";
      synopsis = "Implement cryptography for OpenPGP using crypto-api compatible libraries";
      description = "This is a wrapper around <http://hackage.haskell.org/package/crypto-api>\nand related libraries that currently does fingerprint generation, signature\ngeneration, signature verification, and both asymmetric and symmetric\nencryption and decryption.\n\nIt is indended to be used with <http://hackage.haskell.org/package/openpgp>\n\nIt is intended that you use qualified imports with this library.\n\n> import qualified Data.OpenPGP.CryptoAPI as OpenPGP";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."openpgp" or (errorHandler.buildDepError "openpgp"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."openpgp" or (errorHandler.buildDepError "openpgp"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }