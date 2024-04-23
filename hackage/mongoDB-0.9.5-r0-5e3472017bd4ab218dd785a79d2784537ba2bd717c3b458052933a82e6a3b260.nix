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
      specVersion = "1.0";
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
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }