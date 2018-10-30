{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-cloudtrail";
        version = "1.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudTrail SDK.";
      description = "AWS CloudTrail\nThis is the CloudTrail API Reference. It provides descriptions of\nactions, data types, common parameters, and common errors for\nCloudTrail.\nCloudTrail is a web service that records AWS API calls for your AWS\naccount and delivers log files to an Amazon S3 bucket. The recorded\ninformation includes the identity of the user, the start time of the AWS\nAPI call, the source IP address, the request parameters, and the\nresponse elements returned by the service.\nAs an alternative to using the API, you can use one of the AWS SDKs,\nwhich consist of libraries and sample code for various programming\nlanguages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs\nprovide a convenient way to create programmatic access to AWSCloudTrail.\nFor example, the SDKs take care of cryptographically signing requests,\nmanaging errors, and retrying requests automatically. For information\nabout the AWS SDKs, including how to download and install them, see the\n<http://aws.amazon.com/tools/ Tools for Amazon Web Services page>.\nSee the CloudTrail User Guide for information about the data that is\nincluded with each AWS API call listed in the log files.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudTrail\" and the <http://docs.aws.amazon.com/awscloudtrail/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cloudtrail-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cloudtrail)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }