{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-autoscaling";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Auto Scaling SDK.";
      description = "Auto Scaling allows you to scale your Amazon EC2 capacity up or down\nautomatically according to conditions you define. With Auto Scaling,\nyou can ensure that the number of Amazon EC2 instances you’re using\nincreases seamlessly during demand spikes to maintain performance, and\ndecreases automatically during demand lulls to minimize costs. Auto\nScaling is particularly well suited for applications that experience\nhourly, daily, or weekly variability in usage. Auto Scaling is enabled\nby Amazon CloudWatch and available at no additional charge beyond\nAmazon CloudWatch fees.\n\n/See:/ <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-autoscaling" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }