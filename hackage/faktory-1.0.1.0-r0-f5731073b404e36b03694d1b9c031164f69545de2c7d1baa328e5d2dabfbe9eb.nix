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
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.cryptonite)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.safe-exceptions)
          (hsPkgs.scanner)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "faktory-example-consumer" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.faktory)
            (hsPkgs.safe-exceptions)
            ];
          };
        "faktory-example-producer" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.faktory)
            (hsPkgs.safe-exceptions)
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [ (hsPkgs.base) (hsPkgs.faktory) (hsPkgs.hspec) ];
          };
        "readme" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.faktory)
            (hsPkgs.markdown-unlit)
            ];
          };
        };
      };
    }