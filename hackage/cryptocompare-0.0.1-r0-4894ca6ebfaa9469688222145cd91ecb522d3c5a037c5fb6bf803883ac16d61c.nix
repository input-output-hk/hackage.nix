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
      identifier = { name = "cryptocompare"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2017 Avi Press";
      maintainer = "avipress@gmail.com";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/cryptocompare";
      url = "";
      synopsis = "Haskell wrapper for the cryptocompare API";
      description = "# CryptoCompare\n[![Build Status](https://travis-ci.org/aviaviavi/cryptocompare.svg?branch=master)](https://travis-ci.org/aviaviavi/cryptocompare)\nA Haskell wrapper to the public [CryptoCompare API](https://www.cryptocompare.com/api/), a\nsource of information and pricing of different crypto currencies\n## State\nThis library is usable but not complete. It currently covers a subset of the API.\nBreaking changes will occur if necessary but will be avoided if possible.\n## Contributing\nContributions in any form are always welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "cryptocompare-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cryptocompare" or (errorHandler.buildDepError "cryptocompare"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cryptocompare-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cryptocompare" or (errorHandler.buildDepError "cryptocompare"))
            ];
          buildable = true;
          };
        };
      };
    }