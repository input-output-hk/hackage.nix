{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cloudsearch";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CloudSearch SDK.";
        description = "Amazon CloudSearch is a fully-managed service in the AWS Cloud that\nmakes it simple and cost-effective to set up, manage, and scale a\nsearch solution for your website or application. Amazon CloudSearch\nsupports 34 languages and popular search features such as highlighting,\nautocomplete, and geospatial search.\n\n/See:/ <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/what-is-cloudsearch.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-cloudsearch = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }