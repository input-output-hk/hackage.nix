{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "mongoDB"; version = "0.9.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2010 10gen Inc. & Scott Parish";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Tony Hannan <tony@10gen.com> & Scott Parish <srp@srparish.net>";
      homepage = "http://github.com/TonyGen/mongoDB-haskell";
      url = "";
      synopsis = "MongoDB driver";
      description = "This module lets you connect to MongoDB (www.mongodb.org) and do inserts, queries, updates, etc. Please see the example in Database.MongoDB and the tutorial from the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          ];
        };
      };
    }