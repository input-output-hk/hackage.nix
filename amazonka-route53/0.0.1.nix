{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-route53";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Route 53 SDK.";
        description = "Amazon Route 53 is a scalable Domain Name System (DNS) web service. It\nprovides secure and reliable routing to your infrastructure that uses\nAmazon Web Services (AWS) products, such as Amazon Elastic Compute\nCloud (Amazon EC2), Elastic Load Balancing, or Amazon Simple Storage\nService (Amazon S3). You can also use Amazon Route 53 to route users to\nyour infrastructure outside of AWS.\n\n/See:/ <http://docs.aws.amazon.com/Route53/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-route53 = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }