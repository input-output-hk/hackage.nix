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
      specVersion = "1.12";
      identifier = { name = "pbkdf"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) Chris Dornan";
      maintainer = "chris.dornan@irisconnect.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/pbkdf";
      url = "";
      synopsis = "Haskell implementation of the PBKDF functions from RFC-2898.";
      description = "The Password Based Key Derivation Functions described in RFC-2898 with a test suite to verify that it works with the test vectors published in RFC6070.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."bytedump" or (errorHandler.buildDepError "bytedump"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "rfc-6070" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."bytedump" or (errorHandler.buildDepError "bytedump"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."pbkdf" or (errorHandler.buildDepError "pbkdf"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }