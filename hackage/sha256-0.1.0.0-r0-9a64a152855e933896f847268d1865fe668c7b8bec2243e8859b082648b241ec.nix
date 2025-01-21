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
      identifier = { name = "sha256"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2006 Vincent Hanquez, 2016 Herbert Valerio Riedel, 2024 Auth Global";
      maintainer = "Auth Global";
      author = "Vincent Hanquez, Herbert Valerio Riedel, Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "A modern binding to SHA256, HMAC, HKDF, and PBKDF2";
      description = "A modern binding to SHA256, HMAC, HKDF, and PBKDF2 supporting precomputed\nHMAC keys, streaming, backtracking, bitstring inputs, and (de)serialization\nof intermediate states.  Both HKDF and PBKDF2 reuse HMAC key computations\nfor efficiency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hash-string" or (errorHandler.buildDepError "hash-string"))
          (hsPkgs."network-byte-order" or (errorHandler.buildDepError "network-byte-order"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hash-string" or (errorHandler.buildDepError "hash-string"))
            (hsPkgs."sha256" or (errorHandler.buildDepError "sha256"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }