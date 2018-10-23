{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-cloudwatch";
        version = "1.4.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudWatch SDK.";
      description = "Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and\nthe applications you run on AWS in real-time. You can use CloudWatch to\ncollect and track metrics, which are the variables you want to measure\nfor your resources and applications.\nCloudWatch alarms send notifications or automatically make changes to\nthe resources you are monitoring based on rules that you define. For\nexample, you can monitor the CPU usage and disk reads and writes of your\nAmazon Elastic Compute Cloud (Amazon EC2) instances and then use this\ndata to determine whether you should launch additional instances to\nhandle increased load. You can also use this data to stop under-used\ninstances to save money.\nIn addition to monitoring the built-in metrics that come with AWS, you\ncan monitor your own custom metrics. With CloudWatch, you gain\nsystem-wide visibility into resource utilization, application\nperformance, and operational health.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudWatch\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-cloudwatch" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cloudwatch-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cloudwatch)
            (hsPkgs.base)
            (hsPkgs.bytestring)
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