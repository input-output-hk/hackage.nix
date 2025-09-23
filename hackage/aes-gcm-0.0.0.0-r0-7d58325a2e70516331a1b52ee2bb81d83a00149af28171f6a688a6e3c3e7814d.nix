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
      specVersion = "3.0";
      identifier = { name = "aes-gcm"; version = "0.0.0.0"; };
      license = "GPL-2.0-or-later";
      copyright = "© 2024 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "AES Galois/Counter Mode (GCM) AEAD Cipher";
      description = "This library provides a type-safe API to OpenSSL's AES GCM ([NIST SP 800-38D](https://doi.org/10.6028/NIST.SP.800-38D)) implementation.\nThe API provides both a pure one-shot interface as well as an 'IO'-based incremental interface for streaming large amounts of data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libcrypto" or (errorHandler.pkgConfDepError "libcrypto"))
        ];
        buildable = true;
      };
      tests = {
        "aes-gcm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aes-gcm" or (errorHandler.buildDepError "aes-gcm"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }