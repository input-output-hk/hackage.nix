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
        version = "1.3.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon EC2 Container Service SDK.";
      description = "Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,\ncontainer management service that makes it easy to run, stop, and manage\nDocker containers on a cluster of Amazon EC2 instances. Amazon ECS lets\nyou launch and stop container-enabled applications with simple API\ncalls, allows you to get the state of your cluster from a centralized\nservice, and gives you access to many familiar Amazon EC2 features like\nsecurity groups, Amazon EBS volumes, and IAM roles.\nYou can use Amazon ECS to schedule the placement of containers across\nyour cluster based on your resource needs, isolation policies, and\navailability requirements. Amazon EC2 Container Service eliminates the\nneed for you to operate your own cluster management and configuration\nmanagement systems or worry about scaling your management\ninfrastructure.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.ECS\" and the <http://docs.aws.amazon.com/AmazonECS/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-ecs-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-ecs)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }