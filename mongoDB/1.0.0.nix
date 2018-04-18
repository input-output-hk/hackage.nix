{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "mongoDB";
          version = "1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010-2010 10gen Inc. & Scott Parish";
        maintainer = "Tony Hannan <tony@10gen.com>";
        author = "Tony Hannan <tony@10gen.com> & Scott Parish <srp@srparish.net>";
        homepage = "http://github.com/TonyGen/mongoDB-haskell";
        url = "";
        synopsis = "Driver (client) for MongoDB, a free, scalable, fast, document DBMS";
        description = "This package lets you connect to MongoDB servers and update/query their data. Please see the example in Database.MongoDB and the tutorial from the homepage. For information about MongoDB itself, see www.mongodb.org.";
        buildType = "Simple";
      };
      components = {
        mongoDB = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.cryptohash
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.random
            hsPkgs.random-shuffle
          ];
        };
      };
    }