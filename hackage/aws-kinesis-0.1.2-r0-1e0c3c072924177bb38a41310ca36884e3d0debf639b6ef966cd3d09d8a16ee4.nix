{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "aws-kinesis";
        version = "0.1.2";
      };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
      maintainer = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      author = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      homepage = "https://github.com/alephcloud/hs-aws-kinesis";
      url = "";
      synopsis = "Bindings for Amazon Kinesis";
      description = "Bindings for <http://aws.amazon.com/kinesis/ Amazon Kinesis>\n\nAmazon Kinesis is an AWS service for real-time processing of\nstreaming data at massive scale.\n\n/API Version: 2013-12-02/\n\n<http://docs.aws.amazon.com/kinesis/2013-12-02/APIReference>";
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