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
        name = "amazonka-ec2";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Elastic Compute Cloud SDK.";
      description = "Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides\nresizable compute capacity in the cloud. It is designed to make web-scale\ncomputing easier for developers. Amazon EC2’s simple web service interface\nallows you to obtain and configure capacity with minimal friction. It\nprovides you with complete control of your computing resources and lets you\nrun on Amazon’s proven computing environment. Amazon EC2 reduces the time\nrequired to obtain and boot new server instances to minutes, allowing you to\nquickly scale capacity, both up and down, as your computing requirements\nchange. Amazon EC2 changes the economics of computing by allowing you to pay\nonly for capacity that you actually use. Amazon EC2 provides developers the\ntools to build failure resilient applications and isolate themselves from\ncommon failure scenarios.\n\n/See:/ <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-ec2" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }