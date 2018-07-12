{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elasticache";
          version = "0.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon ElastiCache SDK.";
        description = "ElastiCache is a web service that makes it easy to deploy, operate, and scale\nan in-memory cache in the cloud. The service improves the performance of web\napplications by allowing you to retrieve information from fast, managed,\nin-memory caches, instead of relying entirely on slower disk-based databases.\nAmazon ElastiCache automatically detects and replaces failed nodes, reducing\nthe overhead associated with self-managed infrastructures and provides a\nresilient system that mitigates the risk of overloaded databases, which slow\nwebsite and application load times. Through integration with Amazon\nCloudWatch, Amazon ElastiCache provides enhanced visibility into key\nperformance metrics associated with your Memcached or Redis nodes.\n\n/See:/ <http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-elasticache" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }