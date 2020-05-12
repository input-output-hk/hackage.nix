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
      identifier = { name = "ConcurrentUtils"; version = "0.5.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Concurrent utilities";
      description = "Release notes for version 0.5.0.0:\n\n* Deprecated and removed the 'DataParallel' module, after it performed disappointingly on my own benchmarks, and failed to achieve sufficient parallelism to justify it; deprecated and removed \"deadlock\" and Data.BellmanFord modules.\n\n* Refactored the Conc module and renamed as CPUMultiThreading; improved the implementation of thread pools. By breaking tasks into smaller chunks when putting them on the thread pools, it avoids occupying the thread pools with long running tasks, hopefully making performance predictable when different tasks contend for the same thread pool.\n\n* Added a handrolled(?TODO) semaphore implementation (semaphore) which uses CAS instructions in the common case to reduce latency";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."atl" or (errorHandler.buildDepError "atl"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."assert" or (errorHandler.buildDepError "assert"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }