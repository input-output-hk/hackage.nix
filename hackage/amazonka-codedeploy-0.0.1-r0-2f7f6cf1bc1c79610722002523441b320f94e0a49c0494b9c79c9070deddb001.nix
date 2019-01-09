{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-codedeploy"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodeDeploy SDK.";
      description = "Amazon CodeDeploy is a service that automates code deployments to\nAmazon EC2 instances. Amazon CodeDeploy makes it easier for you to\nrapidly release new features, helps you avoid downtime during\ndeployment, and handles the complexity of updating your applications.\nYou can use Amazon CodeDeploy to automate deployments, eliminating the\nneed for error-prone manual operations, and the service scales with\nyour infrastructure so you can easily deploy to one EC2 instance or\nthousands.\n\n/See:/ <http://docs.aws.amazon.com/codedeploy/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }