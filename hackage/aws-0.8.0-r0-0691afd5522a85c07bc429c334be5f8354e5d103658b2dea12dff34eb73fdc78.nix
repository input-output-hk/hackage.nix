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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aws"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "See contributors list in README and LICENSE file";
      maintainer = "aristidb@gmail.com";
      author = "Aristid Breitkreuz, contributors see README";
      homepage = "http://github.com/aristidb/aws";
      url = "";
      synopsis = "Amazon Web Services (AWS) for Haskell";
      description = "Bindings for Amazon Web Services (AWS), with the aim of supporting all AWS services. To see a high level overview of the library, see the README at <https://github.com/aristidb/aws/blob/master/README.org>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attempt" or (errorHandler.buildDepError "attempt"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "GetObject" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SimpleDb" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }