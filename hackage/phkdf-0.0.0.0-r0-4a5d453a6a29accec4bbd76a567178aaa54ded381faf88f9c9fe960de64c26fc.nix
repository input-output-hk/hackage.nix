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
      identifier = { name = "phkdf"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Auth Global";
      maintainer = "Auth Global";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Toolkit for self-documenting password hash and key derivation functions.";
      description = "Inspired by PBKDF2, HKDF, and TupleHash. Uses HMAC-SHA256 as a primitive.\nThis is primarily intended to be a highly reliable reference implementation\nfor the underlying PHKDF primitives. It also aspires to be production\nready-ish. The main limitation is that it implemented without mutation,\nmeaning that potentially sensitive secrets persist in memory longer than\nnecessary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."network-byte-order" or (errorHandler.buildDepError "network-byte-order"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."tuplehash-utils" or (errorHandler.buildDepError "tuplehash-utils"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."phkdf" or (errorHandler.buildDepError "phkdf"))
            (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }