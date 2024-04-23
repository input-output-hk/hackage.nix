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
      specVersion = "1.18";
      identifier = { name = "faktory"; version = "1.0.2.1"; };
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
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."scanner" or (errorHandler.buildDepError "scanner"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "faktory-example-consumer" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."faktory" or (errorHandler.buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
          buildable = true;
        };
        "faktory-example-producer" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."faktory" or (errorHandler.buildDepError "faktory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."faktory" or (errorHandler.buildDepError "faktory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "readme" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."faktory" or (errorHandler.buildDepError "faktory"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
          ];
          buildable = true;
        };
      };
    };
  }