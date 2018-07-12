{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-ec2";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Compute Cloud SDK.";
        description = "Amazon Elastic Compute Cloud (Amazon EC2) is a web service that\nprovides resizable compute capacity in the cloud. It is designed to\nmake web-scale computing easier for developers. Amazon EC2’s simple web\nservice interface allows you to obtain and configure capacity with\nminimal friction. It provides you with complete control of your\ncomputing resources and lets you run on Amazon’s proven computing\nenvironment. Amazon EC2 reduces the time required to obtain and boot\nnew server instances to minutes, allowing you to quickly scale\ncapacity, both up and down, as your computing requirements change.\nAmazon EC2 changes the economics of computing by allowing you to pay\nonly for capacity that you actually use. Amazon EC2 provides developers\nthe tools to build failure resilient applications and isolate\nthemselves from common failure scenarios.\n\n/See:/ <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-ec2" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }