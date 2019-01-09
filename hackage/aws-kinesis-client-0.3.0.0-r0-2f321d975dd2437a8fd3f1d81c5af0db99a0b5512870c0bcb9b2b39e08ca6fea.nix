{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-kinesis-client"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "A producer & consumer client library for AWS Kinesis";
      description = "";
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
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.http-conduit)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.lens-action)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
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
            (hsPkgs.either)
            (hsPkgs.hoist-error)
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