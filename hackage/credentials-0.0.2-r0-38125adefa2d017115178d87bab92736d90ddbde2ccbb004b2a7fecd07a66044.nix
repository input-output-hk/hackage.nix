{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "credentials"; version = "0.0.2"; };
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."amazonka-dynamodb" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-dynamodb"))
          (hsPkgs."amazonka-kms" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-kms"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."retry" or ((hsPkgs.pkgs-errors).buildDepError "retry"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."credentials" or ((hsPkgs.pkgs-errors).buildDepError "credentials"))
            ];
          buildable = true;
          };
        };
      };
    }