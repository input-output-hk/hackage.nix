{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-simple-queue";
          version = "0.1.0.1";
        };
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
        postgresql-simple-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.postgresql-simple
            hsPkgs.pg-transact
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.transformers
            hsPkgs.random
            hsPkgs.text
            hsPkgs.monad-control
            hsPkgs.postgresql-simple-opts
            hsPkgs.resource-pool
            hsPkgs.optparse-generic
            hsPkgs.data-default
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.lifted-async
            hsPkgs.exceptions
            hsPkgs.bytestring
          ];
        };
        exes = {
          async-email-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgresql-simple-queue
              hsPkgs.amazonka
              hsPkgs.amazonka-ses
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.lifted-base
            ];
          };
        };
        tests = {
          db-testing-example-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgresql-simple-queue
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.postgresql-simple
              hsPkgs.pg-transact
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.hspec-expectations-lifted
              hsPkgs.hspec-pg-transact
              hsPkgs.async
            ];
          };
        };
      };
    }