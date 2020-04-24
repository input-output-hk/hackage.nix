{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "aivika-distributed"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Parallel distributed discrete event simulation module for the Aivika library";
      description = "This package extends the aivika-transformers [1] package and allows running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method. To synchronize the global virtual time,\nit uses Samadi's algorithm.\n\nMoreover, this package uses the author's modification that allows recovering the distributed\nsimulation after temporary connection errors whenever possible. For that, you have to enable explicitly\nthe recovering mode and enable monitoring all logical processes including the specialized Time Server process\nas it is shown in one of the test examples included in the distribution.\n\nWith the recovering mode enabled, you can try to build a distributed simulation using ordinary computers connected\nvia the ordinary net. For example, such a distributed model could even consist of computers located in different\ncontinents of the Earth, where the computers could be connected through the Internet. Here the most exciting thing\nis that this is the optimistic distributed simulation with possible rollbacks. It is assumed that optimistic methods\ntend to better support the parallelism inherited in the models.\n\nYou can test the distributed simulation using your own laptop only, although the package is still destined to be\nused with a multi-core computer, or computers connected in the distributed cluster.\n\nThere are additional packages that allow you to run the distributed simulation experiments by\nthe Monte-Carlo method. They allow you to save the simulation results in SQL databases and then generate a report\nor a set of reports consisting of HTML pages with charts, histograms, links to CSV tables, summary statistics etc.\nPlease consult the AivikaSoft [3] website for more details.\n\nRegarding the speed of simulation, the recent rough estimation is as follows. This estimation may change from\nversion to version. For example, in version 1.0 the rollback log was rewritten, which had a significant effect.\n\nThe distributed simulation module is slower up to 8-15 times in comparison with the sequential aivika [2] simulation\nlibrary using the equivalent sequential models. The lower estimation in 8 times is likely to correspond to complex\nmodels. The upper estimation in 15 times will probably correspond to quite simple event-oriented and process-oriented\nmodels, where the sequential module can be exceptionally fast.\n\nNote that you can run up to 7 parallel logical processes on a single 8-core processor computer and run the Time Server\nprocess too. On a 36-core processor, you can launch up to 35 logical processes simultaneously.\n\nAt the same time, the message passing between the logical processes can dramatically decrease the speed of distributed\nsimulation, especially if they cause rollbacks. Thus, much depends on the distributed model itself.\n\nFinally, you can use the following test model [4] as an example.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[2] <http://hackage.haskell.org/package/aivika>\n\n\\[3] <http://www.aivikasoft.com>\n\n\\[4] <https://github.com/dsorokin/aivika-distributed-test>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."aivika" or ((hsPkgs.pkgs-errors).buildDepError "aivika"))
          (hsPkgs."aivika-transformers" or ((hsPkgs.pkgs-errors).buildDepError "aivika-transformers"))
          ];
        buildable = true;
        };
      };
    }