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
      identifier = { name = "mongoDB"; version = "1.2.0"; };
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
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }