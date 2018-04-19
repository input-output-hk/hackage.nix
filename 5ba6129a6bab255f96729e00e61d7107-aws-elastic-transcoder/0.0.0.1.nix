{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "aws-elastic-transcoder";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Chris Dornan";
        maintainer = "chris.dornan@irisconnect.com";
        author = "Chris Dornan";
        homepage = "http://github.com/iconnect/aws-elastic-transcoder";
        url = "";
        synopsis = "Haskell suite for the Elastic Transcoder service";
        description = "This suite extends the aws suite for the Amazon Web Services (AWS) to interface the AWS Elastic Transcoder service for transcoding video. Providing this package as an extension is en experiment -- it may be integrated into the main package.";
        buildType = "Simple";
      };
      components = {
        aws-elastic-transcoder = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.attempt
            hsPkgs.aws
            hsPkgs.aws-sign4
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.failure
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.regex-compat
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          ets-json = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.regex-compat
              hsPkgs.safe
              hsPkgs.text
            ];
          };
        };
      };
    }