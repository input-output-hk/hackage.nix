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
      identifier = { name = "apotiki"; version = "0.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "pyr@spootnik.org";
      author = "Pierre-Yves Ritschard";
      homepage = "https://github.com/pyr/apotiki";
      url = "";
      synopsis = "a faster debian repository";
      description = "apotiki generates debian repositories fast. its goal is\nto be a great companion to fpm and jenkins.\n\napotiki operates with the following features and constraints:\n\n- Supports a single debian release\n\n- Supports a single debian component\n\n- Supports an arbitrary number of architectures which need to be preprovisionned\n\n- Requires a valid PGP private key for signing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."openpgp-asciiarmor" or (errorHandler.buildDepError "openpgp-asciiarmor"))
          (hsPkgs."openpgp-crypto-api" or (errorHandler.buildDepError "openpgp-crypto-api"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."openpgp" or (errorHandler.buildDepError "openpgp"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
          ];
        buildable = true;
        };
      exes = {
        "apotiki" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."openpgp-asciiarmor" or (errorHandler.buildDepError "openpgp-asciiarmor"))
            (hsPkgs."openpgp-crypto-api" or (errorHandler.buildDepError "openpgp-crypto-api"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."openpgp" or (errorHandler.buildDepError "openpgp"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            ];
          buildable = true;
          };
        };
      };
    }