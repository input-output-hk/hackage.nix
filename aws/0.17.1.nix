{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws";
          version = "0.17.1";
        };
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
        aws = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
            hsPkgs.xml-conduit
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.ghc-prim;
        };
        exes = {
          GetObject = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ];
          };
          GetObjectGoogle = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ];
          };
          MultipartUpload = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.text
              hsPkgs.resourcet
            ];
          };
          MultipartTransfer = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.text
            ];
          };
          NukeBucket = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          PutBucketNearLine = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          SimpleDb = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.text
            ];
          };
          DynamoDb = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.aws
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.exceptions
              hsPkgs.http-conduit
              hsPkgs.text
              hsPkgs.conduit
            ];
          };
          Sqs = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.errors
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          sqs-tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.aws
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.errors
              hsPkgs.http-client
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.quickcheck-instances
              hsPkgs.resourcet
              hsPkgs.tagged
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
            ];
          };
          dynamodb-tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.aws
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.errors
              hsPkgs.http-client
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.quickcheck-instances
              hsPkgs.resourcet
              hsPkgs.tagged
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
            ];
          };
          s3-tests = {
            depends  = [
              hsPkgs.aws
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.conduit-combinators
              hsPkgs.errors
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.resourcet
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.tagged
              hsPkgs.transformers
              hsPkgs.transformers-base
            ];
          };
        };
      };
    }