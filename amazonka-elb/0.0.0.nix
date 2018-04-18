{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elb";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Load Balancing SDK.";
        description = "Elastic Load Balancing automatically distributes incoming application\ntraffic across multiple Amazon EC2 instances. It enables you to achieve\ngreater levels of fault tolerance in your applications, seamlessly\nproviding the required amount of load balancing capacity needed to\ndistribute application traffic.\n\n/See:/ <http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-elb = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }