{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-queue"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/postgresql-queue#readme";
      url = "";
      synopsis = "A PostgreSQL backed queue";
      description = "This module utilize PostgreSQL to implement a durable queue for efficently processing arbitrary payloads which can be represented as JSON.\n\nTypically a producer would enqueue a new payload as part of larger database\ntransaction\n\n>  createAccount userRecord = do\n>     'runDBTSerializable' \$ do\n>        createUserDB userRecord\n>        'enqueueDB' \"queue_schema\" \$ makeVerificationEmail userRecord\n\nIn another thread or process, the consumer would drain the queue.\n\n>   forever \$ do\n>     -- Attempt get a payload or block until one is available\n>     payload <- lock \"queue\" conn\n>\n>     -- Perform application specifc parsing of the payload value\n>     case fromJSON \$ pValue payload of\n>       Success x -> sendEmail x -- Perform application specific processing\n>       Error err -> logErr err\n>\n>     -- Remove the payload from future processing\n>     dequeue \"queue\" conn \$ pId payload\n>\n> To support multiple queues in the same database, the API expects a table name string\n> to determine which queue tables to use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."pg-transact" or ((hsPkgs.pkgs-errors).buildDepError "pg-transact"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations-lifted" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations-lifted"))
            (hsPkgs."hspec-pg-transact" or ((hsPkgs.pkgs-errors).buildDepError "hspec-pg-transact"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."pg-transact" or ((hsPkgs.pkgs-errors).buildDepError "pg-transact"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."postgresql-simple-queue" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple-queue"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }