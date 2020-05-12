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
      identifier = { name = "stackage-setup"; version = "0.0.0"; };
      license = "MIT";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton@fpcomplete.com";
      author = "Dan Burton";
      homepage = "https://www.stackage.org/package/stackage-setup";
      url = "";
      synopsis = "An executable for downloading a Haskell setup";
      description = "An executable for downloading a Haskell setup";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stackage-setup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."stackage-cli" or (errorHandler.buildDepError "stackage-cli"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."classy-prelude-conduit" or (errorHandler.buildDepError "classy-prelude-conduit"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."cryptohash-conduit" or (errorHandler.buildDepError "cryptohash-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }