{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      library-only = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stratosphere";
          version = "0.20.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/frontrowed/stratosphere#readme";
        url = "";
        synopsis = "EDSL for AWS CloudFormation";
        description = "EDSL for AWS CloudFormation";
        buildType = "Simple";
      };
      components = {
        stratosphere = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          apigw-lambda-dynamodb = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          auto-scaling-group = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          ec2-with-eip = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.aeson-qq
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          rds-master-replica = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          s3-copy = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          simple-lambda = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.lens
              hsPkgs.stratosphere
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }