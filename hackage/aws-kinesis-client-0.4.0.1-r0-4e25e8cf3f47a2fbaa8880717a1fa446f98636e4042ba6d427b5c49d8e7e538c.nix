{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-kinesis-client"; version = "0.4.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2015 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "A producer & consumer client library for AWS Kinesis";
      description = "This package provides a Producer client for bulk-writing messages to a\nKinesis stream through a bounded queue, and a Consumer client for reading\nmessages round-robin from all shards of a Kinesis stream.  Additionally, a\nrudimentary CLI interface to the Consumer is provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.aeson)
          (hsPkgs.aws)
          (hsPkgs.aws-kinesis)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-carousel)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.http-conduit)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.lens-action)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.nats)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-queue-extras)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "kinesis-cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.aeson)
            (hsPkgs.aws)
            (hsPkgs.aws-general)
            (hsPkgs.aws-kinesis)
            (hsPkgs.aws-kinesis-client)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.kan-extensions)
            (hsPkgs.lens)
            (hsPkgs.lifted-async)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }