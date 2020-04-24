{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "immortal-queue"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/immortal-queue#readme";
      url = "";
      synopsis = "Build a pool of queue-processing worker threads.";
      description = "@immortal-queue@ is a library for build an asynchronous worker pool that\nprocesses action from a generic queue. You can use any thread-safe datatype\nwith a push and pop like a @TQueue@ or a @persistent@ database table.\n\nThe worker pool is configured by building an @ImmortalQueue@ type, which\ndescribes how to push and pop from the queue as well as how to process\nitems and handle errors.\n\nFor a simple usage example using a TQueue, see the module documentation.\nFor a more complex example that uses a @persistent@ database as a queue,\nsee\n<https://github.com/Southern-Exposure-Seed-Exchange/southernexposure.com/blob/develop/server/src/Workers.hs Southern Exposure's website code>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."immortal" or ((hsPkgs.pkgs-errors).buildDepError "immortal"))
          ];
        buildable = true;
        };
      tests = {
        "immortal-queue-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."immortal-queue" or ((hsPkgs.pkgs-errors).buildDepError "immortal-queue"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }