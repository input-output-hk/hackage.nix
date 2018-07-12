{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elasticache";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon ElastiCache SDK.";
        description = "ElastiCache is a web service that makes it easy to deploy, operate, and\nscale an in-memory cache in the cloud. The service improves the\nperformance of web applications by allowing you to retrieve information\nfrom fast, managed, in-memory caches, instead of relying entirely on\nslower disk-based databases. Amazon ElastiCache automatically detects\nand replaces failed nodes, reducing the overhead associated with\nself-managed infrastructures and provides a resilient system that\nmitigates the risk of overloaded databases, which slow website and\napplication load times. Through integration with Amazon CloudWatch,\nAmazon ElastiCache provides enhanced visibility into key performance\nmetrics associated with your Memcached or Redis nodes.\n\n/See:/ <http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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