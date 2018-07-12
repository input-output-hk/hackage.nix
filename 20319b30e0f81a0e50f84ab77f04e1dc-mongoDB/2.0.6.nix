{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mongoDB";
          version = "2.0.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010-2012 10gen Inc.";
        maintainer = "Fedor Gogolev <knsd@knsd.net>";
        author = "Tony Hannan";
        homepage = "https://github.com/mongodb-haskell/mongodb";
        url = "";
        synopsis = "Driver (client) for MongoDB, a free, scalable, fast, document\nDBMS";
        description = "This package lets you connect to MongoDB servers and\nupdate/query their data. Please see the example in\nDatabase.MongoDB and the tutorial from the homepage. For\ninformation about MongoDB itself, see www.mongodb.org.";
        buildType = "Simple";
      };
      components = {
        "mongoDB" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bson
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.cryptohash
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.hashtables
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.mongoDB
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.hspec
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }