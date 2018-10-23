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
        name = "amazonka-sqs";
        version = "1.4.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Queue Service SDK.";
      description = "Welcome to the /Amazon Simple Queue Service API Reference/. This section describes who should read this guide, how the guide is organized, and other resources related to the Amazon Simple Queue Service (Amazon SQS).\nAmazon SQS offers reliable and scalable hosted queues for storing messages as they travel between computers. By using Amazon SQS, you can move data between distributed components of your applications that perform different tasks without losing messages or requiring each component to be always available.\nHelpful Links:\n-   <http://queue.amazonaws.com/doc/2012-11-05/QueueService.wsdl Current WSDL (2012-11-05)>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/MakingRequestsArticle.html Making API Requests>\n-   <http://aws.amazon.com/sqs/ Amazon SQS product page>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html Using Amazon SQS Message Attributes>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html Using Amazon SQS Dead Letter Queues>\n-   <http://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region Regions and Endpoints>\nWe also provide SDKs that enable you to access Amazon SQS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as:\n-   Cryptographically signing your service requests\n-   Retrying requests\n-   Handling error responses\nFor a list of available SDKs, go to <http://aws.amazon.com/tools/ Tools for Amazon Web Services>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SQS\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-sqs" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-sqs-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-sqs)
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