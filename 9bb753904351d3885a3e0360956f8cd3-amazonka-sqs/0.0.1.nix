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
      specVersion = "1.10";
      identifier = {
        name = "amazonka-sqs";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Queue Service SDK.";
      description = "Amazon Simple Queue Service (SQS) is a fast, reliable, scalable, fully\nmanaged message queuing service. SQS makes it simple and cost-effective\nto decouple the components of a cloud application. You can use SQS to\ntransmit any volume of data, at any level of throughput, without losing\nmessages or requiring other services to be always available. With SQS,\nyou can offload the administrative burden of operating and scaling a\nhighly available messaging cluster, while paying a low price for only\nwhat you use.\n\n/See:/ <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-sqs" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }