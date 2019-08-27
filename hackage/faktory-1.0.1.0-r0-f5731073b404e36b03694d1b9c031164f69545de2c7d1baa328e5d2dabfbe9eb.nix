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
      specVersion = "1.18";
      identifier = { name = "faktory"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "2018 Freckle Education";
      maintainer = "engineering@freckle.com";
      author = "Freckle Engineering";
      homepage = "https://github.com/frontrowed/faktory_worker_haskell#readme";
      url = "";
      synopsis = "Faktory Worker for Haskell";
      description = "Haskell client and worker process for the Faktory background job server.\n\n== Architecture overview\n\n@\n|                        +--------------------+\n|                        |                    |\n|                        |     Faktory        |\n|                        |     Server         |\n|         +---------->>>>|                    +>>>>--------+\n|         |              |                    |            |\n|         |              |                    |            |\n|         |              +--------------------+            |\n| +-----------------+                            +-------------------+\n| |                 |                            |                   |\n| |    Client       |                            |     Worker        |\n| |    pushes       |                            |     pulls         |\n| |     jobs        |                            |      jobs         |\n| |                 |                            |                   |\n| |                 |                            |                   |\n| +-----------------+                            +-------------------+\n@\n\n* `Client` - an API any process can use to push jobs to the Faktory server.\n* `Worker` - a process that pulls jobs from Faktory and executes them.\n* `Server` - the Faktory daemon which stores background jobs in queues to be processed by Workers.\n\nThis package contains only the `Client` and `Worker`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (buildDepError "aeson-casing"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."scanner" or (buildDepError "scanner"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        };
      exes = {
        "faktory-example-consumer" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."faktory" or (buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          };
        "faktory-example-producer" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."faktory" or (buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."faktory" or (buildDepError "faktory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "readme" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."faktory" or (buildDepError "faktory"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            ];
          };
        };
      };
    }