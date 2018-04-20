{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elb";
          version = "1.4.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Load Balancing SDK.";
        description = "Elastic Load Balancing\nElastic Load Balancing distributes incoming traffic across your EC2 instances.\nFor information about the features of Elastic Load Balancing, see <http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elastic-load-balancing.html What Is Elastic Load Balancing?> in the /Elastic Load Balancing Developer Guide/.\nFor information about the AWS regions supported by Elastic Load Balancing, see <http://docs.aws.amazon.com/general/latest/gr/rande.html#elb_region Regions and Endpoints - Elastic Load Balancing> in the /Amazon Web Services General Reference/.\nAll Elastic Load Balancing operations are /idempotent/, which means that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK response code.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.ELB\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-elb = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-elb-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-elb
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