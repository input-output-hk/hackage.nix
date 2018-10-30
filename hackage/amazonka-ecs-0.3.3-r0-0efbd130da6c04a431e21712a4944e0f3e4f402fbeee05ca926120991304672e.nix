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
        name = "amazonka-ecs";
        version = "0.3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon EC2 Container Service SDK.";
      description = "Amazon EC2 Container Service is a highly scalable, high performance container\nmanagement service that supports Docker containers and allows you to easily\nrun distributed applications on a managed cluster of Amazon EC2 instances.\nAmazon EC2 Container Service lets you launch and stop container-enabled\napplications with simple API calls, allows you to query the state of your\ncluster from a centralized service, and gives you access to many familiar\nAmazon EC2 features like security groups, EBS volumes and IAM roles. You can\nuse EC2 Container Service to schedule the placement of containers across your\ncluster based on your resource needs, isolation policies, and availability\nrequirements. Amazon EC2 Container Service eliminates the need for you to\noperate your own cluster management and configuration management systems or\nworry about scaling your management infrastructure.\n\n/See:/ <http://docs.aws.amazon.com/AmazonECS/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }