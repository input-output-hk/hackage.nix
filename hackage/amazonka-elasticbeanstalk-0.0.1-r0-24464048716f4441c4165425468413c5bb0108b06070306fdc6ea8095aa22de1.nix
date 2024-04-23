{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-elasticbeanstalk"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Elastic Beanstalk SDK.";
      description = "AWS Elastic Beanstalk is an easy-to-use service for deploying and\nscaling web applications and services developed with Java, .NET, PHP,\nNode.js, Python, Ruby, and Docker on familiar servers such as Apache\nHTTP Server, Apache Tomcat, Nginx, Passenger, and IIS 7.5/8. You can\nsimply upload your code and Elastic Beanstalk automatically handles the\ndeployment, from capacity provisioning, load balancing, auto-scaling to\napplication health monitoring. At the same time, you retain full\ncontrol over the AWS resources powering your application and can access\nthe underlying resources at any time. There is no additional charge for\nElastic Beanstalk - you pay only for the AWS resources needed to store\nand run your applications.\n\n/See:/ <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }