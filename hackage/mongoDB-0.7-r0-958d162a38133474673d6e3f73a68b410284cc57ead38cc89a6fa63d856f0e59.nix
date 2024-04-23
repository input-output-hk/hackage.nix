{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "mongoDB"; version = "0.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2010 Scott Parish & 10gen Inc.";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Scott Parish <srp@srparish.net> & Tony Hannan <tony@10gen.com>";
      homepage = "http://github.com/TonyGen/mongoDB-haskell";
      url = "";
      synopsis = "A driver for MongoDB";
      description = "This module lets you connect to MongoDB, do inserts, queries, updates, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
        ];
        buildable = true;
      };
    };
  }