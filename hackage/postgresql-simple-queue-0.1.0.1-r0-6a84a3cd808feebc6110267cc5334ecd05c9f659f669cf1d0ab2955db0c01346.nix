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
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-queue"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/postgresql-queue#readme";
      url = "";
      synopsis = "A PostgreSQL backed queue";
      description = "This module utilize PostgreSQL to implement a durable queue for efficently processing arbitrary payloads which can be represented as JSON.\n\nTypically a producer would enqueue a new payload as part of larger database\ntransaction\n\n>  createAccount userRecord = do\n>     'runDBTSerializable' \$ do\n>        createUserDB userRecord\n>        'enqueueDB' \$ makeVerificationEmail userRecord\n\nIn another thread or process, the consumer would drain the queue.\n\n>   forever \$ do\n>     -- Attempt get a payload or block until one is available\n>     payload <- lock conn\n>\n>     -- Perform application specifc parsing of the payload value\n>     case fromJSON \$ pValue payload of\n>       Success x -> sendEmail x -- Perform application specific processing\n>       Error err -> logErr err\n>\n>     -- Remove the payload from future processing\n>     dequeue conn \$ pId payload";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."pg-transact" or (errorHandler.buildDepError "pg-transact"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."postgresql-simple-opts" or (errorHandler.buildDepError "postgresql-simple-opts"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "async-email-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-simple-queue" or (errorHandler.buildDepError "postgresql-simple-queue"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-ses" or (errorHandler.buildDepError "amazonka-ses"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "db-testing-example-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-simple-queue" or (errorHandler.buildDepError "postgresql-simple-queue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."pg-transact" or (errorHandler.buildDepError "pg-transact"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec-expectations-lifted" or (errorHandler.buildDepError "hspec-expectations-lifted"))
            (hsPkgs."hspec-pg-transact" or (errorHandler.buildDepError "hspec-pg-transact"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }