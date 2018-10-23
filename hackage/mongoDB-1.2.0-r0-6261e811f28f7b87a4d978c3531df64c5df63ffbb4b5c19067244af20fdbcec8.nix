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
        version = "1.2.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2012 10gen Inc.";
      maintainer = "Tony Hannan <tonyhannan@gmail.com>";
      author = "Tony Hannan";
      homepage = "http://github.com/TonyGen/mongoDB-haskell";
      url = "";
      synopsis = "Driver (client) for MongoDB, a free, scalable, fast, document DBMS";
      description = "This package lets you connect to MongoDB servers and update/query their data. Please see the example in Database.MongoDB and the tutorial from the homepage. For information about MongoDB itself, see www.mongodb.org.";
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
          (hsPkgs.cryptohash)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }