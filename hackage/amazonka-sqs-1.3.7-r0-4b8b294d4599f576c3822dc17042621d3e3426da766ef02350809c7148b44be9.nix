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
      identifier = { name = "amazonka-sqs"; version = "1.3.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Queue Service SDK.";
      description = "Welcome to the /Amazon Simple Queue Service API Reference/. This section\ndescribes who should read this guide, how the guide is organized, and\nother resources related to the Amazon Simple Queue Service (Amazon SQS).\nAmazon SQS offers reliable and scalable hosted queues for storing\nmessages as they travel between computers. By using Amazon SQS, you can\nmove data between distributed components of your applications that\nperform different tasks without losing messages or requiring each\ncomponent to be always available.\nHelpful Links:\n-   <http://queue.amazonaws.com/doc/2012-11-05/QueueService.wsdl Current WSDL (2012-11-05)>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/MakingRequestsArticle.html Making API Requests>\n-   <http://aws.amazon.com/sqs/ Amazon SQS product page>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html Using Amazon SQS Message Attributes>\n-   <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html Using Amazon SQS Dead Letter Queues>\n-   <http://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region Regions and Endpoints>\nWe also provide SDKs that enable you to access Amazon SQS from your\npreferred programming language. The SDKs contain functionality that\nautomatically takes care of tasks such as:\n-   Cryptographically signing your service requests\n-   Retrying requests\n-   Handling error responses\nFor a list of available SDKs, go to\n<http://aws.amazon.com/tools/ Tools for Amazon Web Services>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SQS\" and the <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
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
      tests = {
        "amazonka-sqs-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-sqs" or (errorHandler.buildDepError "amazonka-sqs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }