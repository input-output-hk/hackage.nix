{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-ses"; version = "0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Email Service SDK.";
      description = "Amazon Simple Email Service (Amazon SES) is a cost-effective\noutbound-only email-sending service built on the reliable and scalable\ninfrastructure that Amazon.com has developed to serve its own customer\nbase. With Amazon SES, you can send transactional email, marketing\nmessages, or any other type of high-quality content and you only pay\nfor what you use. Along with high deliverability, Amazon SES provides\neasy, real-time access to your sending statistics and built-in\nnotifications for bounces, complaints, and deliveries to help you\nfine-tune your email-sending strategy.\n\n/See:/ <http://docs.aws.amazon.com/ses/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }