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
      identifier = { name = "credentials"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/credentials";
      url = "";
      synopsis = "Secure Credentials Storage and Distribution";
      description = "This library provides a unified interface for managing secure, shared credentials.\nIt uses Amazon Key Management Service (KMS) for master key management, locally\nencrypts and decrypts secrets, which are then stored in any of the supported\nstorage backends. (Currently DynamoDB.)\n\nThe use-case is to avoid storing sensitive information such as passwords and\nconnection strings in plaintext in places such as source control or on\ndevelopers' machines. Instead you can securely administer and distribute\nsecrets, leveraging Amazon's IAM policies for access control and permissions to\nensure limited read-only permissions from production/deployed hosts.\nYou can embed this library into projects such as web applications to securely\nretrieve sensitive information such as database passwords or private keys on startup.\n\nA complementary CLI for management of credentials can be installed via\n<https://hackage.haskell.org/package/credentials-cli credentials-cli>.\n\nYou can read more about other use-cases and prerequisites <https://github.com/brendanhay/credentials here>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-dynamodb" or (errorHandler.buildDepError "amazonka-dynamodb"))
          (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."credentials" or (errorHandler.buildDepError "credentials"))
          ];
          buildable = true;
        };
      };
    };
  }