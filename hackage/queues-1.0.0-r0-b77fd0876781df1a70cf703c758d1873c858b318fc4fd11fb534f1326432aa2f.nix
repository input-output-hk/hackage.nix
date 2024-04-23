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
      specVersion = "2.2";
      identifier = { name = "queues"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2023-2024 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen, Travis Staton";
      homepage = "https://github.com/awkward-squad/queues";
      url = "";
      synopsis = "Queue data structures.";
      description = "Queue data structures, as described in\n\n* Okasaki, Chris. \"Simple and efficient purely functional queues and deques.\" /Journal of functional programming/ 5.4 (1995): 583-592.\n* Okasaki, Chris. /Purely Functional Data Structures/. Diss. Princeton University, 1996.\n\nA queue has a \\\"back\\\" where new elements are enqueued, and a \\\"front\\\" where elements are dequeued in the order that\nthey were enqueued (last in, first out).\n\nThe queues provided in this library also support an \\\"enqueue at front\\\" operation, because the underlying\nrepresentations happen to support it, so you might technically refer to these data structures as\n/output-restricted deques/.\n\nIn this library, it is helpful to think of the \\\"front\\\" being on the /left/, because (though the direction is\narbitrary) we are consistent throughout, where it matters:\n\n* List conversion functions associate the head of a list with the front of a queue.\n* The append operator @xs <> ys@ creates a queue with @xs@ in front of @ys@.\n* The `Show` instances draw the front of the queue on the left.\n\nUnder \\\"ephemeral\\\" (or \\\"single-threaded\\\", or \\\"linear\\\") usage, wherein one does not need to refer to an old\nversion of a data structure after mutating it:\n\n* @EphemeralQueue@ is __2.5x faster__ than and __allocates 0.50x as much__ memory as @Queue@.\n* @Queue@ is __2.6x faster__ than and __allocates 0.40x as much__ memory as @Seq@ (from @containers@).\n\n(These numbers vary from benchmark to benchmark and machine to machine. Always perform your own experiments!)\n\nWhile it is certainly common to use a queue ephemerally, it is unusual for a Haskell data structure to require\nephemeral usage to achieve its stated bounds. A refactoring or change in requirements might cause surprising changes\nin performance. That is why @EphemeralQueue@ has a longer name and module name. When in doubt, use @Queue@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."queues" or (errorHandler.buildDepError "queues"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-ephemeral-queue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."queues" or (errorHandler.buildDepError "queues"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "bench-real-time-queue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."queues" or (errorHandler.buildDepError "queues"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "bench-sequence-queue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }