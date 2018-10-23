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
        name = "amazonka-sns";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Notification Service SDK.";
      description = "Amazon Simple Notification Service (Amazon SNS) is a fast, flexible,\nfully managed push messaging service. Amazon SNS makes it simple and\ncost-effective to push notifications to Apple, Google, Fire OS, and\nWindows devices, as well as Android devices in China with Baidu Cloud\nPush. You can also use SNS to push notifications to internet connected\nsmart devices, as well as other distributed services. Besides pushing\ncloud notifications directly to mobile devices, Amazon SNS can also\ndeliver notifications by SMS text message or email, to Amazon Simple\nQueue Service (SQS) queues, or to any HTTP endpoint. To prevent\nmessages from being lost, all messages published to Amazon SNS are\nstored redundantly across multiple availability zones.\n\n/See:/ <http://docs.aws.amazon.com/sns/latest/api/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-sns" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }