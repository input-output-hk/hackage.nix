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
      identifier = { name = "batchd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/batchd";
      url = "";
      synopsis = "Batch processing toolset for Linux / Unix";
      description = "The batchd is a toolset for batch processing for Linux / Unix operating systems.\nIt enables one to:\n\n* Create and manage queues of tasks (batch jobs);\n\n* Specify time periods (schedules) when jobs from each queue can be executed;\n\n* Run batch jobs on localhost or on several machines one-by-one or in parallel.\n\nThe main concern of batchd are batch jobs, which are\nmeant to take some time to execute (minutes to days) and\nconsume a lot of computational power (probably whole\npower of the machine). Examples of such jobs are:\n\n* Scientific calculations (physical modelling or numeric\nexperiments on differential equations, for example);\n\n* Building large software products from source code;\n\n* Running integration test suites;\n\n* Rendering complex 3D scenes or animations;\n\n* Executing complex reports on large databases;\n\n* Backups;\n\n* and so on.\n\nFor more complete description, please refer to\n<https://github.com/portnov/batchd/blob/master/README.md README>\nand <https://github.com/portnov/batchd/wiki Wiki> on GitHub.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "batchd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (errorHandler.buildDepError "monad-logger-syslog"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."template" or (errorHandler.buildDepError "template"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            ];
          buildable = true;
          };
        "batchd-admin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (errorHandler.buildDepError "monad-logger-syslog"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."template" or (errorHandler.buildDepError "template"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            ];
          buildable = true;
          };
        "batch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (errorHandler.buildDepError "monad-logger-syslog"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            ];
          buildable = true;
          };
        };
      };
    }