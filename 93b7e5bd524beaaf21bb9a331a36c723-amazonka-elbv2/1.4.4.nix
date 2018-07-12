{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elbv2";
          version = "1.4.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Load Balancing SDK.";
        description = "Elastic Load Balancing\nA load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets.\nElastic Load Balancing supports two types of load balancers: Classic load balancers and Application load balancers (new). A Classic load balancer makes routing and load balancing decisions either at the transport layer (TCP\\/SSL) or the application layer (HTTP\\/HTTPS), and supports either EC2-Classic or a VPC. An Application load balancer makes routing and load balancing decisions at the application layer (HTTP\\/HTTPS), supports path-based routing, and can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC). For more information, see the <http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/ Elastic Load Balancing User Guide>.\nThis reference covers the 2015-12-01 API, which supports Application load balancers. The 2012-06-01 API supports Classic load balancers.\nTo get started with an Application load balancer, complete the following tasks:\n1.  Create a load balancer using < CreateLoadBalancer>.\n2.  Create a target group using < CreateTargetGroup>.\n3.  Register targets for the target group using < RegisterTargets>.\n4.  Create one or more listeners for your load balancer using < CreateListener>.\n5.  (Optional) Create one or more rules for content routing based on URL using < CreateRule>.\nTo delete an Application load balancer and its related resources, complete the following tasks:\n1.  Delete the load balancer using < DeleteLoadBalancer>.\n2.  Delete the target group using < DeleteTargetGroup>.\nAll Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.ELBv2\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        "amazonka-elbv2" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          "amazonka-elbv2-test" = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-elbv2
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }