{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-lambda";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Lambda SDK.";
        description = "AWS Lambda is a compute service that runs your code in response to\nevents and automatically manages the compute resources for you, making\nit easy to build applications that respond quickly to new information.\nAWS Lambda starts running your code within milliseconds of an event\nsuch as an image upload, in-app activity, website click, or output from\na connected device. You can also use AWS Lambda to create new back-end\nservices where compute resources are automatically triggered based on\ncustom requests. With AWS Lambda you pay only for the requests served\nand the compute time required to run your code. Billing is metered in\nincrements of 100 milliseconds, making it cost-effective and easy to\nscale automatically from a few requests per day to thousands per\nsecond.\n\n/See:/ <http://docs.aws.amazon.com/lambda/latest/dg/API_Reference.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-lambda = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }