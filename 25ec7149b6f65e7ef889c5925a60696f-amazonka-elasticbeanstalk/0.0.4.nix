{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elasticbeanstalk";
          version = "0.0.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Beanstalk SDK.";
        description = "AWS Elastic Beanstalk is an easy-to-use service for deploying and scaling web\napplications and services developed with Java, .NET, PHP, Node.js, Python,\nRuby, and Docker on familiar servers such as Apache HTTP Server, Apache\nTomcat, Nginx, Passenger, and IIS 7.5/8. You can simply upload your code and\nElastic Beanstalk automatically handles the deployment, from capacity\nprovisioning, load balancing, auto-scaling to application health monitoring.\nAt the same time, you retain full control over the AWS resources powering\nyour application and can access the underlying resources at any time. There\nis no additional charge for Elastic Beanstalk - you pay only for the AWS\nresources needed to store and run your applications.\n\n/See:/ <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-elasticbeanstalk = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }