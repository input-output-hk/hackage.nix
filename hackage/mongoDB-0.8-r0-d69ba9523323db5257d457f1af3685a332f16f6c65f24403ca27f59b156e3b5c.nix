{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "mongoDB";
        version = "0.8";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2010 Scott Parish & 10gen Inc.";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Scott Parish <srp@srparish.net> & Tony Hannan <tony@10gen.com>";
      homepage = "http://github.com/TonyGen/mongoDB-haskell";
      url = "";
      synopsis = "A driver for MongoDB";
      description = "This module lets you connect to MongoDB (www.mongodb.org) and do inserts, queries, updates, etc.";
      buildType = "Simple";
    };
    components = {
      "mongoDB" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.nano-md5)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.random)
        ];
      };
    };
  }