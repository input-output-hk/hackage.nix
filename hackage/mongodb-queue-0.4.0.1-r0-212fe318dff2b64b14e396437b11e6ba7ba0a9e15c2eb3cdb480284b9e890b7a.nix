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
      specVersion = "1.8";
      identifier = { name = "mongodb-queue"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/haskell-mongodb-queue";
      url = "";
      synopsis = "message queue using MongoDB";
      description = "A simple messaging queue using MongoDB. This trades having a good queue for ease of deployment. This is designed to be much worse at scale than real queueing infrastructure. However, it is very simple to start using if you are already running MongoDB. You could probably fork this code to make it work with a different database that you are already using.\n\nThere are 2 options for receiving a message: polling or tailable cursors. Polling is obviously inefficient, but it works against an index on a capped collection, so it should still be fairly efficient, and as fast as the polling interval you set. Tailable cursors respond very quickly and don't re-query the database. However, there is an outstanding bug that they use up CPU on the database when the system is idle, particularly as more tailable cursors are added. The idle CPU usage will become worse as you scale out to multiple worker processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }