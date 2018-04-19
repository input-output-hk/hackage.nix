{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "credentials";
          version = "0.0.1.1";
        };
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
        credentials = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.amazonka-dynamodb
            hsPkgs.amazonka-kms
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.cryptonite
            hsPkgs.exceptions
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.retry
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.credentials
            ];
          };
        };
      };
    }