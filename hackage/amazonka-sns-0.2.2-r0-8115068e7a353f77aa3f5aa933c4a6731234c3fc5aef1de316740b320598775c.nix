{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-sns"; version = "0.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Notification Service SDK.";
      description = "Amazon Simple Notification Service (Amazon SNS) is a fast, flexible, fully\nmanaged push messaging service. Amazon SNS makes it simple and cost-effective\nto push notifications to Apple, Google, Fire OS, and Windows devices, as well\nas Android devices in China with Baidu Cloud Push. You can also use SNS to\npush notifications to internet connected smart devices, as well as other\ndistributed services. Besides pushing cloud notifications directly to mobile\ndevices, Amazon SNS can also deliver notifications by SMS text message or\nemail, to Amazon Simple Queue Service (SQS) queues, or to any HTTP endpoint.\nTo prevent messages from being lost, all messages published to Amazon SNS are\nstored redundantly across multiple availability zones.\n\n/See:/ <http://docs.aws.amazon.com/sns/latest/api/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }