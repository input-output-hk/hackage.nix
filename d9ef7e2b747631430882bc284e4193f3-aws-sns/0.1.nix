{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "aws-sns";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 AlephCloud, Inc.";
        maintainer = "Lars Kuhtz <lars@alephcloud.com>";
        author = "Lars Kuhtz <lars@alephcloud.com>";
        homepage = "https://github.com/alephcloud/hs-aws-sns";
        url = "";
        synopsis = "Bindings for AWS SNS Version 2013-03-31";
        description = "Bindings for AWS SNS\n\n/API Version: 2013-03-31/\n\n<http://docs.aws.amazon.com/sns/2010-03-31/APIReference/Welcome.html>";
        buildType = "Simple";
      };
      components = {
        "aws-sns" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.aws
            hsPkgs.aws-general
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.parsers
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          "SNS-tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.aws
              hsPkgs.aws-general
              hsPkgs.aws-sns
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.errors
              hsPkgs.mtl
              hsPkgs.tagged
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }