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
      specVersion = "2.4";
      identifier = { name = "tahoe-ssk"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "exarkun@twistedmatrix.com";
      author = "Jean-Paul Calderone";
      homepage = "https://whetstone.private.storage/PrivateStorage/tahoe-ssk";
      url = "";
      synopsis = "An implementation of the Tahoe-LAFS SSK cryptographic protocols";
      description = "This currently includes a partial implementation of SDMF.  A future version\nmay include an implementation of MDMF.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."tahoe-chk" or (errorHandler.buildDepError "tahoe-chk"))
          ];
        buildable = true;
        };
      exes = {
        "make-keypairs" = {
          depends = [
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."tahoe-ssk" or (errorHandler.buildDepError "tahoe-ssk"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ];
          buildable = true;
          };
        "encode-ssk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
            (hsPkgs."tahoe-ssk" or (errorHandler.buildDepError "tahoe-ssk"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tahoe-ssk-test" = {
          depends = [
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
            (hsPkgs."tahoe-chk" or (errorHandler.buildDepError "tahoe-chk"))
            (hsPkgs."tahoe-ssk" or (errorHandler.buildDepError "tahoe-ssk"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }