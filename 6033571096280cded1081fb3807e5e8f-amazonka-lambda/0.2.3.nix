{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-lambda";
          version = "0.2.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Lambda SDK.";
        description = "AWS Lambda is a compute service that runs your code in response to events and\nautomatically manages the compute resources for you, making it easy to build\napplications that respond quickly to new information. AWS Lambda starts\nrunning your code within milliseconds of an event such as an image upload,\nin-app activity, website click, or output from a connected device. You can\nalso use AWS Lambda to create new back-end services where compute resources\nare automatically triggered based on custom requests. With AWS Lambda you pay\nonly for the requests served and the compute time required to run your code.\nBilling is metered in increments of 100 milliseconds, making it\ncost-effective and easy to scale automatically from a few requests per day to\nthousands per second.\n\n/See:/ <http://docs.aws.amazon.com/lambda/latest/dg/API_Reference.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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