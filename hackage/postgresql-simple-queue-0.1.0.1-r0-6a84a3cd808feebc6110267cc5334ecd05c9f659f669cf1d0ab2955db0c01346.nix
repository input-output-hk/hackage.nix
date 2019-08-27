let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."pg-transact" or (buildDepError "pg-transact"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."postgresql-simple-opts" or (buildDepError "postgresql-simple-opts"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      exes = {
        "async-email-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."postgresql-simple-queue" or (buildDepError "postgresql-simple-queue"))
            (hsPkgs."amazonka" or (buildDepError "amazonka"))
            (hsPkgs."amazonka-ses" or (buildDepError "amazonka-ses"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            ];
          };
        };
      tests = {
        "db-testing-example-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."postgresql-simple-queue" or (buildDepError "postgresql-simple-queue"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."pg-transact" or (buildDepError "pg-transact"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."hspec-expectations-lifted" or (buildDepError "hspec-expectations-lifted"))
            (hsPkgs."hspec-pg-transact" or (buildDepError "hspec-pg-transact"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      };
    }