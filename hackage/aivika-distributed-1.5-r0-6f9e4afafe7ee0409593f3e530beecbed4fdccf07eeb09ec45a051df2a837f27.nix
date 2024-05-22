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
      specVersion = "1.10";
      identifier = { name = "aivika-distributed"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2024. David Sorokin <davsor@mail.ru>";
      maintainer = "David Sorokin <davsor@mail.ru>";
      author = "David Sorokin";
      homepage = "https://gitflic.ru/project/dsorokin/aivika-distributed";
      url = "";
      synopsis = "Parallel distributed discrete event simulation module for the Aivika library";
      description = "This package extends the aivika-transformers [1] package and allows running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method. To synchronize the global virtual time,\nit uses Samadi's algorithm.\n\nMoreover, this package uses the author's modification that allows recovering the distributed\nsimulation after temporary connection errors whenever possible. For that, you have to enable explicitly\nthe recovering mode and enable the monitoring of all logical processes including the specialized Time Server process\nas it is shown in one of the test examples included in the distribution.\n\nWith the recovering mode enabled, you can try to build a distributed simulation using ordinary computers connected\nvia the ordinary net. For example, such a distributed model could even consist of computers located in different\ncontinents of the Earth, where the computers could be connected through the Internet. Here the most exciting thing\nis that this is the optimistic distributed simulation with possible rollbacks. It is assumed that optimistic methods\ntend to better support the parallelism inherited in the models.\n\nYou can test the distributed simulation using your own laptop, although the package is still destined to be\nused with a multi-core computer, or computers connected in the distributed cluster.\n\nThere are additional packages that allow you to run the distributed simulation experiments by using\nthe Monte-Carlo method. They allow you to save the simulation results in SQL databases and then generate a report\nor a set of reports consisting of HTML pages with charts, histograms, links to CSV tables, summary statistics etc.\n\nRegarding the speed of simulation, the recent rough estimation is as follows. This estimation may change from\nversion to version. For example, in version 1.0 the rollback log was rewritten, which had a significant effect.\n\nWhen simulating sequential models, the speed of single logical process of the distributed module in comparison with\nthe sequential aivika [2] module varies and depends essentially on the number of\nsimultaneously processed discrete events, or the number of simultaneously running discontinuous processes,\nwhich is very close. If there are many simultaneous events, then the distributed module can be slower in 4-5 times only.\nThe more simultaneous events are defined in the model, the less is a gap in the speed between modules.\nBut if the simultaneous events are rare, then the distributed module can be slower even in 15 times,\nwhere the sequential module can be exceptionally fast. At the same time, the message passing between the logical\nprocesses can dramatically decrease the speed of distributed simulation, especially if the messages cause rollbacks.\nThen it makes sense to define the time horizon parameter. Thus, much depends on the distributed model itself.\n\nWhen residing the logical processes in a computer with multi-core processor, you should follow the next recommendations.\nYou should reserve at least 1 core for each logical process, or even reserve 2 cores if the logical process extensively\nsends and receives messages. Also you should additionally reserve at least 1 or 2 cores for each computational node.\nThese additional processor cores will be used by the GHC run-time system that includes the garbage collector as well.\nThe Aivika distributed module creates a huge amount of short-living small objects. Therefore, the garbage collector\nneeds at least one core to utilize efficiently these objects.\n\nYou should compile your code with options -O2 and -threaded, but then launch it with run-time options +RTS -N.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[2] <http://hackage.haskell.org/package/aivika>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
          (hsPkgs."aivika-transformers" or (errorHandler.buildDepError "aivika-transformers"))
        ];
        buildable = true;
      };
    };
  }