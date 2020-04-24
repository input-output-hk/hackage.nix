{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-casing" or ((hsPkgs.pkgs-errors).buildDepError "aeson-casing"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."scanner" or ((hsPkgs.pkgs-errors).buildDepError "scanner"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "faktory-example-consumer" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."faktory" or ((hsPkgs.pkgs-errors).buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            ];
          buildable = true;
          };
        "faktory-example-producer" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."faktory" or ((hsPkgs.pkgs-errors).buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."faktory" or ((hsPkgs.pkgs-errors).buildDepError "faktory"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."faktory" or ((hsPkgs.pkgs-errors).buildDepError "faktory"))
            (hsPkgs."markdown-unlit" or ((hsPkgs.pkgs-errors).buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        };
      };
    }