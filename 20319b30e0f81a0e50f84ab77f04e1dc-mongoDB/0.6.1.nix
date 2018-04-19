{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "mongoDB";
          version = "0.6.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010-2010 Scott Parish & 10gen Inc.";
        maintainer = "Tony Hannan <tony@10gen.com>";
        author = "Scott Parish <srp@srparish.net> & Tony Hannan <tony@10gen.com>";
        homepage = "http://github.com/TonyGen/mongoDB";
        url = "";
        synopsis = "A driver for MongoDB";
        description = "This module lets you connect to MongoDB, do inserts, queries, updates, etc.";
        buildType = "Simple";
      };
      components = {
        mongoDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.nano-md5
            hsPkgs.parsec
            hsPkgs.bson
          ];
        };
      };
    }