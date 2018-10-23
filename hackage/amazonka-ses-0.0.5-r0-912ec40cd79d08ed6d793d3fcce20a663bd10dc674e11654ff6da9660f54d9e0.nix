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
        name = "amazonka-ses";
        version = "0.0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Email Service SDK.";
      description = "Amazon Simple Email Service (Amazon SES) is a cost-effective outbound-only\nemail-sending service built on the reliable and scalable infrastructure that\nAmazon.com has developed to serve its own customer base. With Amazon SES, you\ncan send transactional email, marketing messages, or any other type of\nhigh-quality content and you only pay for what you use. Along with high\ndeliverability, Amazon SES provides easy, real-time access to your sending\nstatistics and built-in notifications for bounces, complaints, and deliveries\nto help you fine-tune your email-sending strategy.\n\n/See:/ <http://docs.aws.amazon.com/ses/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-ses" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }