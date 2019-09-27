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
      specVersion = "1.2";
      identifier = { name = "priority-sync"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "";
      url = "";
      synopsis = "Cooperative task prioritization.";
      description = "In a simple use case, we want to run some expensive tasks in prioritized order, so that only one task is running on each\nCPU (or hardware thread) at any time.   For this simple case, four operations are needed: 'simpleTaskPool',\n'schedule', 'claim', and 'startQueue'.\n\n@\nlet expensiveTask = threadDelay 1000000\npool <- simpleTaskPool\nforkIO \$ claim Acquire (schedule pool 1) \$ putStrLn \\\"Task 1 started . . .\\\" >> expensiveTask >> putStrLn \\\"Task 1 completed.\\\"\nforkIO \$ claim Acquire (schedule pool 3) \$ putStrLn \\\"Task 3 started . . .\\\" >> expensiveTask >> putStrLn \\\"Task 3 completed.\\\"\nforkIO \$ claim Acquire (schedule pool 2) \$ putStrLn \\\"Task 2 started . . .\\\" >> expensiveTask >> putStrLn \\\"Task 2 completed.\\\"\nthreadDelay 100000  -- contrive to wait for all tasks to become enqueued\nputStrLn \\\"Starting pool: \\\"\nstartQueue pool\nthreadDelay 4000000 -- contrive to wait for all tasks to become dequeued\n@\n\nA 'TaskPool' combines 'Room's and 'Queue's in an efficient easy-to-use-interface.\n\n'Room's provide fully reentrant synchronization to any number of threads based on arbitrary resource constraints.\nFor example, the 'Room' from a 'simpleTaskPool' is constrained by 'GHC.numCapabilities'.\n\n'Queue's provide task prioritization.  A 'Queue' systematically examines (to a configurable depth) all waiting threads with their\npriorities and resource constraints and wakes the most eagerly prioritized thread whose constraints can be satisfied.\n\n'TaskPool's are not thread pools.  The concept is similar to IO Completion Ports.  There are no worker threads.  If a number of threads are waiting,\nthe thread that is most likely to be processed next is woken and temporarily serves as a working thread.\n\n'Room's, 'Queue's, and 'TaskPool's are backed by carefully written STM (software transactional memory) transactions.\n\nA salient feature is that, because any thread can participate, a 'TaskPool' supports both bound threads and threads created with 'forkOnIO'.\n\nThe git repository is available at <http://www.downstairspeople.org/git/priority-sync.git>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."heap" or (buildDepError "heap"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "_Control_Concurrent_Priority_Tests" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }