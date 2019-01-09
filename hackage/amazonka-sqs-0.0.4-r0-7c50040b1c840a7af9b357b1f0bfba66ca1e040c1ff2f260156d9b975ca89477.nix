{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-sqs"; version = "0.0.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Queue Service SDK.";
      description = "Amazon Simple Queue Service (SQS) is a fast, reliable, scalable, fully\nmanaged message queuing service. SQS makes it simple and cost-effective to\ndecouple the components of a cloud application. You can use SQS to transmit\nany volume of data, at any level of throughput, without losing messages or\nrequiring other services to be always available. With SQS, you can offload\nthe administrative burden of operating and scaling a highly available\nmessaging cluster, while paying a low price for only what you use.\n\n/See:/ <http://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }