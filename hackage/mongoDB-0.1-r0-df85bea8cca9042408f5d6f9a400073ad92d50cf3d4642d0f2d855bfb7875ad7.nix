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
      identifier = { name = "mongoDB"; version = "0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2010-2010 Scott Parish";
      maintainer = "Scott Parish <srp@srparish.net>";
      author = "Scott Parish <srp@srparish.net>";
      homepage = "";
      url = "";
      synopsis = "A driver for MongoDB";
      description = "This driver lets you connect to MongoDB, do inserts,\nqueries, updates, etc. Also has many convience functions\ninspired by HDBC such as more easily converting between\nthe BsonValue types and native Haskell types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
    };
  }