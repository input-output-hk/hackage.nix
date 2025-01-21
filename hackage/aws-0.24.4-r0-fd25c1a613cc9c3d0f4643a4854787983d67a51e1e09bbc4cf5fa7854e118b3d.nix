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
    flags = { examples = false; networkbsd = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aws"; version = "0.24.4"; };
      license = "BSD-3-Clause";
      copyright = "See contributors list in README and LICENSE file";
      maintainer = "aristidb@gmail.com";
      author = "Aristid Breitkreuz, contributors see README";
      homepage = "http://github.com/aristidb/aws";
      url = "";
      synopsis = "Amazon Web Services (AWS) for Haskell";
      description = "Bindings for Amazon Web Services (AWS), with the aim of supporting all AWS services. To see a high level overview of the library, see the README at <https://github.com/aristidb/aws/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-aeson" or (errorHandler.buildDepError "attoparsec-aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ] ++ (if flags.networkbsd
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ])) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      exes = {
        "GetObjectV4" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "GetObject" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "GetObjectGoogle" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "MultipartUpload" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "MultipartTransfer" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "NukeBucket" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "PutBucketNearLine" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "SimpleDb" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "DynamoDb" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "Sqs" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "sqs-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
          buildable = true;
        };
        "dynamodb-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
          buildable = true;
        };
        "s3-tests" = {
          depends = [
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
          buildable = true;
        };
      };
    };
  }