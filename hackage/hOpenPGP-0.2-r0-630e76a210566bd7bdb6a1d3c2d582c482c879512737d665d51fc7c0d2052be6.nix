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
      identifier = { name = "hOpenPGP"; version = "0.2"; };
      license = "MIT";
      copyright = "2012, Clint Adams";
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
          (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-conduit" or (errorHandler.buildDepError "cereal-conduit"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cereal-conduit" or (errorHandler.buildDepError "cereal-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }