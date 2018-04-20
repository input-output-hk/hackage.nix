{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-sdb";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon SimpleDB SDK.";
        description = "Amazon SimpleDB is a highly available and flexible non-relational data store\nthat offloads the work of database administration. Developers simply store\nand query data items via web services requests and Amazon SimpleDB does the\nrest. Unbound by the strict requirements of a relational database, Amazon\nSimpleDB is optimized to provide high availability and flexibility, with\nlittle or no administrative burden. Behind the scenes, Amazon SimpleDB\ncreates and manages multiple geographically distributed replicas of your data\nautomatically to enable high availability and data durability. The service\ncharges you only for the resources actually consumed in storing your data and\nserving your requests. You can change your data model on the fly, and data is\nautomatically indexed for you. With Amazon SimpleDB, you can focus on\napplication development without worrying about infrastructure provisioning,\nhigh availability, software maintenance, schema and index management, or\nperformance tuning.\n\n/See:/ <http://docs.aws.amazon.com/AmazonSimpleDB/latest/DeveloperGuide/SDB_API.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-sdb = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }