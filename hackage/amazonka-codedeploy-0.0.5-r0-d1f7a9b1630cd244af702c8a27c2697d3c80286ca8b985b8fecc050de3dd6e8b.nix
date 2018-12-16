{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-codedeploy";
        version = "0.0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodeDeploy SDK.";
      description = "Amazon CodeDeploy is a service that automates code deployments to Amazon EC2\ninstances. Amazon CodeDeploy makes it easier for you to rapidly release new\nfeatures, helps you avoid downtime during deployment, and handles the\ncomplexity of updating your applications. You can use Amazon CodeDeploy to\nautomate deployments, eliminating the need for error-prone manual operations,\nand the service scales with your infrastructure so you can easily deploy to\none EC2 instance or thousands.\n\n/See:/ <http://docs.aws.amazon.com/codedeploy/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }