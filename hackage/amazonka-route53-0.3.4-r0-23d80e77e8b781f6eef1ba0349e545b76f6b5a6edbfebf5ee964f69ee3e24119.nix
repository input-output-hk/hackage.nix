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
        name = "amazonka-route53";
        version = "0.3.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Route 53 SDK.";
      description = "Amazon Route 53 is a scalable Domain Name System (DNS) web service. It\nprovides secure and reliable routing to your infrastructure that uses Amazon\nWeb Services (AWS) products, such as Amazon Elastic Compute Cloud (Amazon\nEC2), Elastic Load Balancing, or Amazon Simple Storage Service (Amazon S3).\nYou can also use Amazon Route 53 to route users to your infrastructure\noutside of AWS.\n\n/See:/ <http://docs.aws.amazon.com/Route53/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-route53" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }