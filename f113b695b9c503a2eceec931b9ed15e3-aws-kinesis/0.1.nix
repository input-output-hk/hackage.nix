{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "aws-kinesis";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "https://github.com/alephcloud/hs-aws-kinesis";
      url = "";
      synopsis = "Bindings for AWS Kinesis Version 2013-12-02";
      description = "Bindings for AWS Kinesis\n\n/API Version: 2013-12-02/\n\n<http://docs.aws.amazon.com/kinesis/2013-12-02/APIReference>";
      buildType = "Simple";
    };
    components = {
      "aws-kinesis" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aws)
          (hsPkgs.aws-general)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.parsers)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "kinesis-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aws)
            (hsPkgs.aws-general)
            (hsPkgs.aws-kinesis)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.mtl)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }