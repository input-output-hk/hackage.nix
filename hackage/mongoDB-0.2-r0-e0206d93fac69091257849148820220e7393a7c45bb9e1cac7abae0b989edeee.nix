{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "mongoDB";
        version = "0.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2010-2010 Scott Parish";
      maintainer = "Scott Parish <srp@srparish.net>";
      author = "Scott Parish <srp@srparish.net>";
      homepage = "http://github.com/srp/mongoDB";
      url = "";
      synopsis = "A driver for MongoDB";
      description = "This driver lets you connect to MongoDB, do inserts,\nqueries, updates, etc. Also has many convience functions\ninspired by HDBC such as more easily converting between\nthe BsonValue types and native Haskell types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }