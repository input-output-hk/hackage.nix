{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-kinesis-reshard";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
        maintainer = "jon@jonmsterling.com";
        author = "Jon Sterling";
        homepage = "https://github.com/alephcloud/hs-aws-kinesis-reshard";
        url = "";
        synopsis = "Reshard AWS Kinesis streams in response to Cloud Watch metrics";
        description = "";
        buildType = "Simple";
      };
      components = {
        aws-kinesis-reshard = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.aws
            hsPkgs.aws-general
            hsPkgs.aws-kinesis
            hsPkgs.aws-sdk
            hsPkgs.conduit
            hsPkgs.bytestring
            hsPkgs.hoist-error
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          kinesis-reshard = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.aws
              hsPkgs.aws-general
              hsPkgs.aws-sdk
              hsPkgs.aws-kinesis
              hsPkgs.aws-kinesis-reshard
              hsPkgs.conduit
              hsPkgs.either
              hsPkgs.hoist-error
              hsPkgs.lens
              hsPkgs.lifted-async
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }