{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      warnings = false;
      pattern-warnings = false;
      examples = false;
      tutorial = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "LogicGrowsOnTrees"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "a parallel implementation of logic programming using distributed tree exploration";
      description = "NOTE:  In addition to the following package description, see\n\n* <http://github.com/gcross/LogicGrowsOnTrees/blob/master/TUTORIAL.md TUTORIAL.md>\nfor a tutorial,\n\n* <http://github.com/gcross/LogicGrowsOnTrees/blob/master/USERS_GUIDE.md USERS_GUIDE.md>\nfor a user's guide that provides more information about\nhow to use this package, and\n\n* <http://github.com/gcross/LogicGrowsOnTrees/blob/master/README.md README.md>\nfor an FAQ.\n\nYou can think of this package in two equivalent ways. First, you can think\nof it as an implementation of logic programming that is designed to be\nparellelized using workers that have no memory shared between them (hence,\n\\\"distributed\\\"). Second, you can think of this package as providing\ninfrastructure for exploring a tree in parallel. The connection between\nthese two perspectives is that logic programming involves making\nnondeterministic choices, and each such choice is equivalent to a branch\npoint in a tree representing the search space of the logic program. In the\nrest of the reference documentation we will focus on the tree perspective\nsimply because a lot of the functionality makes the most sense from the\nperspective of working with trees, but one is always free to ignore this and\nsimply write a logic program using the standard approach of using\n'MonadPlus' to indicate choice and failure, and the 'Tree' implementation of\nthis typeclass will take care of the details of turning your logic program\ninto tree. (If you are not familiar with this approach, then see\n<http://github.com/gcross/LogicGrowsOnTrees/blob/master/TUTORIAL.md\nTUTORIAL.md>.)\n\nTo use this package, you first write a function that builds a tree (say, by\nusing logic programming); the \"LogicGrowsOnTrees\" module provides\nfunctionality to assist in this. You may have your function either return a\ngeneric 'MonadPlus' or 'MonadExplorable' (where the latter lets you cache\nexpensive intermediate calculations so that they do not have to be performed\nagain if this path is re-explored later), or you may have it return a 'Tree'\n(or one of its impure friends) directly. You can then test your tree using\nthe visting functions in the \"LogicGrowsOnTrees\" module.\n\nWARNING: If you need something like state in your tree, then you should\nstack the state monad (or whatever else you want) /on top/ of 'Tree' rather\nthan below it. The reason for this is that if you stack the monad below\n'TreeT', then your monad will be affected by the order in which the tree is\nexplored, which is almost never what you want, in part because if you are\nnot careful then you will break the assumption made by the checkpointing and\nparallelization infrastructure that it does not matter in what order the\ntree is explored or even whether some parts are explored twice or not at all\nin a given run. If side-effects that are not undone by backtracking is\nindeed what you want, then you need to make sure that your side-effects do\nnot break this assumption; for example, a monad which memoizes a pure\nfunction is perfectly fine. By contrast if you are working within the `IO`\nmonad and writing results to a database rather than returning them (and\nassuming that duplicate results would cause problems) then you need to check\nto make sure you aren't writing the same result twice, such as by using the\n\"LogicGrowsOnTrees.Location\" functionality to identify where you are in the\ntree so you can query to see if your current location is already listed in\nthe database.\n\nIf you want to see examples of generating a tree to solve a problem, then\nsee \"LogicGrowsOnTrees.Examples.MapColoring\" or\n\"LogicGrowsOnTrees.Examples.Queens\" modules, which have some basic examples\nof using logic programming to find and/or count the number of solutions to a\ngiven map coloring problem and a given n-queens problem. The\n\"LogicGrowsOnTrees.Examples.Queens.Advanced\" module has my own solution to\nthe n-queens problem where I use symmetry breaking to prune the search tree,\ncutting the runtime by about a factor of three.\n\nOnce your tree has been debugged, you can start taking advantage of the\nmajor features of this package. If you are interested in checkpointing, but\nnot parallelization, then you can use the step functions in the\n\"LogicGrowsOnTrees.Checkpoint\" module to sequentially explore a tree one\nnode at a time, saving the current checkpoint as often as you desire; at any\ntime the exploration can be aborted and resumed later. Most likely, though,\nyou will be interested in using the parallelization infrastructure rather\nthan just the checkpointing infrastructure. The parallelization\ninfrastructure uses a supervisor/worker model, and is designed such that the\nlogic used to keep track of the workers and the current progress is\nabstracted away into the \"LogicGrowsOnTrees.Parallel.Common.Supervisor\"\nmodule; one then uses one of the provided adapters (or possibly your own) to\nconnect the abstract model to a particular means of running multiple\ncomputations in parallel, such as multiple threads, multiple processes on\nthe same machine, multiple processes on a network, and MPI; the first option\nis included in this package and the others are provided in separate\npackages. Parallelization is obtained by stealing workloads from workers;\nspecifically, a selected worker will look back at the (non-frozen) choices\nit has made so far, pick the first one, freeze it (so that it won't\nbacktrack and try the other branch), and then hand the other branch to the\nsupervisor which will then give it to a waiting worker.\n\nTo use the parallelization infrastructure, you have two choices. First, you\ncan opt to use the adapter directly; the exploration functions provided by\nthe adapter are relatively simple (compared to the alternative to be\ndiscussed in a moment) and furthermore, they give you maximum control over\nthe adapter, but the downside is that you will have to re-implement features\nsuch as regular checkpointing and forwarding information from the command\nline to the workers yourself. Second, you can use the infrastructure in\n\"LogicGrowsOnTrees.Parallel.Main\", which automates most of the process for\nyou, including parsing the command lines, sending information to the\nworkers, determining how many workers (if applicable) to start up, offering\nthe user a command line option to specify whether, where, and how often to\ncheckpoint, etc.; this infrastructure is also completely adapter\nindependent, which means that when switching from one adapter to another all\nyou have to do is change one of the arguments in your call to the main\nfunction you are using in \"LogicGrowsOnTrees.Parallel.Main\". The downside is\nthat the call to use this functionality is a bit more complex than the call\nto use a particular adapter precisely because of its generality.\n\nIf you want to see examples of using the \"LogicGrowsOnTrees.Parallel.Main\"\nmodule, check out the example executables in the @examples/@ subdirectory of\nthe source distribution.\n\nIf you are interested in writing a new adapter, then you have couple of\noptions. First, if your adapter can spawn and destroy workers on demand,\nthen you should look at the \"LogicGrowsOnTrees.Parallel.Common.Workgroup\"\nmodule, as it has infrastructure designed for this case; look at\n\"LogicGrowsOnTrees.Parallel.Adapter.Threads\" for an example of using it.\nSecond, if your adapter does not meet this criterion, then you should look\nat the \"LogicGrowsOnTrees.Parallel.Common.Supervisor\" module; your adapter\nwill need to run within the 'SupervisorMonad', with its own state contained\nin its own monad below the 'SupervisorMonad' monad in the stack; for an\nexample, look at the @LogicGrowsOnTrees-network@ module.\n\nNOTE: This package uses the @hslogger@ package for logging; if you set the\nlog level to INFO or DEBUG (either by calling the functions in @hslogger@\nyourself or by using the @-l@ command line option if you are using `Main`)\nthen many status messages will be printed to the screen (or wherever else\nthe log has been configured to be written).\n\nThe modules are organized as follows:\n\n[\"LogicGrowsOnTrees\"] basic infrastructure for building and exploring trees\n\n[\"LogicGrowsOnTrees.Checkpoint\"] infrastructure for creating and stepping through checkpoints\n\n[\"LogicGrowsOnTrees.Examples.MapColoring\"] simple examples of computing all possible colorings of a map\n\n[\"LogicGrowsOnTrees.Examples.Queens\"] simple examples of solving the n-quees problem\n\n[\"LogicGrowsOnTrees.Examples.Queens.Advanced\"] a very complicated example of solving the n-queens problem using symmetry breaking\n\n[\"LogicGrowsOnTrees.Location\"] infrastructure for when you want to have knowledge of your current location within a tree\n\n[\"LogicGrowsOnTrees.Parallel.Adapter.Threads\"] the threads adapter\n\n[\"LogicGrowsOnTrees.Parallel.Common.Message\"] common infrastructure for exchanging messages between worker and supervisor\n\n[\"LogicGrowsOnTrees.Parallel.Common.Process\"] common infrastricture for the case where a worker has specific communications channels for sending and recieving messages; it might seem like this should always be the case, but it is not true for threads, as the supervisor has direct access to the worker thread, nor for MPI which has its own idiosyncratic communication model\n\n[\"LogicGrowsOnTrees.Parallel.Common.RequestQueue\"] infrastructure for sending requests to the 'SupervisorMonad' from another thread\n\n[\"LogicGrowsOnTrees.Parallel.Common.Supervisor\"] common infrastructure for keeping track of the state of workers and of the system as a whole, including determining when the run is over\n\n[\"LogicGrowsOnTrees.Parallel.Common.Worker\"] contains the workhorse of the parallel infrastructure:  a thread that steps through a given workload while continuously polling for requests\n\n[\"LogicGrowsOnTrees.Parallel.Common.Workgroup\"] common infrastructure for the case where workers can be added and removed from the system on demand\n\n[\"LogicGrowsOnTrees.Parallel.ExplorationMode\"] specifies the various modes in which the exploration can be done\n\n[\"LogicGrowsOnTrees.Parallel.Main\"] a unified interface to the various adapters that automates much of the process such as processing the command, forwarding the needed information to the workers, and performing regular checkpointing if requested via a command line argument\n\n[\"LogicGrowsOnTrees.Parallel.Purity\"] specifies the purity of the tree being explored\n\n[\"LogicGrowsOnTrees.Path\"] infrastructure for working with paths trough the search tree\n\n[\"LogicGrowsOnTrees.Utils.Handle\"] a couple of utility functions for exchanging serializable data over handles\n\n[\"LogicGrowsOnTrees.Utils.IntSum\"] a monoid that contains an 'Int' to be summed over\n\n[\"LogicGrowsOnTrees.Utils.PerfectTree\"] provides algorithms for generating various simple trees\n\n[\"LogicGrowsOnTrees.Utils.WordSum\"] a monoid that contains a 'Word' to be summed over\n\n[\"LogicGrowsOnTrees.Utils.Word_\"] a newtype wrapper that provides an `ArgVal` instance for `Word`\n\n[\"LogicGrowsOnTrees.Workload\"] infrastructure for working with 'Workload's\n\nOf the above modules, the ones you will be using most often\nare \"LogicGrowsOnTrees\" (for building trees), one of the\nadapter modules (such as\n\"LogicGrowsOnTrees.Parallel.Adapter.Threads\"), and possibly\n\"LogicGrowsOnTrees.Parallel.Main\". If you are counting the\nnumber of solutions, then you will also want to look at\n\"LogicGrowsOnTrees.Utils.WordSum\". Finally, if your program\ntakes a 'Word' as a command line argument or option then\nyou might find the \"LogicGrowsOnTrees.Utils.Word_\" module\nto be useful. The other modules provide lower-level\nfunctionality; in particular the\n@LogicGrowsOnTrees.Parallel.Common.*@ modules are primarily\ngeared towards people writing their own adapter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.AbortT-transformers)
          (hsPkgs.AbortT-mtl)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cmdtheline)
          (hsPkgs.composition)
          (hsPkgs.containers)
          (hsPkgs.data-ivar)
          (hsPkgs.derive)
          (hsPkgs.directory)
          (hsPkgs.hslogger)
          (hsPkgs.hslogger-template)
          (hsPkgs.lens)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.monoid-statistics)
          (hsPkgs.mtl)
          (hsPkgs.multiset)
          (hsPkgs.old-locale)
          (hsPkgs.operational)
          (hsPkgs.prefix-units)
          (hsPkgs.pretty)
          (hsPkgs.PSQueue)
          (hsPkgs.sequential-index)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.void)
          (hsPkgs.yjtools)
          ];
        };
      exes = {
        "readme-simple" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.containers)
            ];
          };
        "readme-full" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            ];
          };
        "count-all-nqueens-solutions" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            ];
          };
        "print-all-nqueens-solutions" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            ];
          };
        "print-an-nqueens-solution" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            ];
          };
        "print-some-nqueens-solutions-using-pull" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            ];
          };
        "print-some-nqueens-solutions-using-push" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            ];
          };
        "count-all-trivial-tree-leaves" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.cmdtheline)
            ];
          };
        "tutorial-1" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-2" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.containers)
            ];
          };
        "tutorial-3" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-4" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-5" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-6" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-7" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.transformers)
            ];
          };
        "tutorial-8" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.transformers)
            ];
          };
        "tutorial-9" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-10" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-11" = {
          depends = [ (hsPkgs.LogicGrowsOnTrees) (hsPkgs.base) ];
          };
        "tutorial-12" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            ];
          };
        "tutorial-13" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cmdtheline)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.composition)
            (hsPkgs.containers)
            (hsPkgs.data-ivar)
            (hsPkgs.directory)
            (hsPkgs.hslogger)
            (hsPkgs.hslogger-template)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.operational)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.smallcheck)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-smallcheck)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.uuid)
            (hsPkgs.void)
            ];
          };
        "test-nqueens" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "tree-versus-list-lopsided-trivial-tree" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-lopsided-null-tree" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-null-tree" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-trivial-tree" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-unit-tree" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        "tree-versus-list-nqueens" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-nqueens-using-sets" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-nqueens-using-bits" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-nqueens-with-list-at-bottom" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-nqueens-with-nothing-at-bottom" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-bind" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-bind-and-mplus" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        "tree-versus-list-fmap" = {
          depends = [
            (hsPkgs.LogicGrowsOnTrees)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }