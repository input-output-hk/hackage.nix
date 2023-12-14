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
      specVersion = "2.2";
      identifier = { name = "amazonka-s3-encryption"; version = "2.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>, Jack Kelly <jack@jackkelly.name>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Storage Service SDK - Client-Side Encryption.";
      description = "Addons for <http://hackage.haskell.org/package/amazonka-s3 amazonka-s3> to\nsupport client-side encryption. This allows the use of a client-side master key\nto encrypt/decrypt data locally and store encrypted data in S3 to be later\ndecrypt by any other client with access to the same master key. Unencrypted\nobject data or keys are not sent to Amazon S3 using this method, but object\nmetadata is transmitted in plaintext.\n\nEncryption and decryption are done in a streaming fashion, with\nencrypted requests being incrementally signed using the version 4 signature\nalgorithm and sent via chunked-encoding.\n\nThe client-side master key you provide can be a symmetric key, an\nasymmetric public/private key pair, or a KMS master key.\n\nThis library is designed to be compatible with the official Java\nAWS SDK (both V1 and V2 envelopes), but only a limited set of the possible\nencryption options are supported. Therefore assuming defaults, objects stored\nwith this library should be retrievable by any of the other official SDKs, and\nvice versa. The metadata can be attached as header metadata\non the stored object or as a separate JSON instructions file.\n@PutObject@, @GetObject@, and the various multipart upload operations are supported.\n\nSee <http://hackage.haskell.org/package/amazonka-s3-encryption/docs/Network-AWS-S3-Encryption.html Amazonka.S3.Encryption>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "amazonka-s3-encryption-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-s3-encryption" or (errorHandler.buildDepError "amazonka-s3-encryption"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }