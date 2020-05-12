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
      identifier = { name = "aws-kinesis-client"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "A producer & consumer client library for AWS Kinesis";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."aws-kinesis" or (errorHandler.buildDepError "aws-kinesis"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."data-carousel" or (errorHandler.buildDepError "data-carousel"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
          (hsPkgs."stm-queue-extras" or (errorHandler.buildDepError "stm-queue-extras"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "kinesis-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."aws-kinesis" or (errorHandler.buildDepError "aws-kinesis"))
            (hsPkgs."aws-kinesis-client" or (errorHandler.buildDepError "aws-kinesis-client"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."data-carousel" or (errorHandler.buildDepError "data-carousel"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
            (hsPkgs."stm-queue-extras" or (errorHandler.buildDepError "stm-queue-extras"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aws-general" or (errorHandler.buildDepError "aws-general"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }