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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (buildDepError "monad-logger-syslog"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."dates" or (buildDepError "dates"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."vault" or (buildDepError "vault"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."template" or (buildDepError "template"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."libssh2" or (buildDepError "libssh2"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            ];
          };
        "batchd-admin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (buildDepError "monad-logger-syslog"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."dates" or (buildDepError "dates"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."vault" or (buildDepError "vault"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."template" or (buildDepError "template"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."libssh2" or (buildDepError "libssh2"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            ];
          };
        "batch" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."dates" or (buildDepError "dates"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."x509-store" or (buildDepError "x509-store"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (buildDepError "monad-logger-syslog"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            ];
          };
        };
      };
    }