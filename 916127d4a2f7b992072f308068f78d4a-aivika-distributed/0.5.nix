{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-distributed";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2017. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com";
        url = "";
        synopsis = "Parallel distributed discrete event simulation module for the Aivika library";
        description = "This package extends the aivika-transformers [1] package and allows running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method. To synchronize the global virtual time,\nit uses Samadi's algorithm.\n\nMoreover, this package uses the author's modification that allows recovering the distributed\nsimulation after temporary connection errors whenever possible. For that, you have to enable explicitly\nthe recovering mode and enable monitoring all local processes including the specialized Time Server process\nas it is shown in one of the test examples included in the distributive.\n\nWith the recovering mode enabled, you can try to build a distributed simulation using ordinary computers connected\nvia the ordinary net. For example, such a distributed model could even consist of computers located in different\ncontinents of the Earth, where the computers could be connected through the Internet. Here the most exciting thing\nis that this is the optimistic distributed simulation with possible rollbacks. It is assumed that optimistic methods\ntend to better support the parallelism inherited in the models.\n\nYou may test the distributed simulation using your own notebook only, although the package is still destined to be\nused with a multi-core computer, or computers connected in the distributed cluster.\n\nThere are additional packages that allow you to run the distributed simulation experiments by\nthe Monte-Carlo method. They allow you to save the simulation results in SQL databases and then generate a report\nor a set of reports consisting of HTML pages with charts, histograms, links to CSV tables, summary statistics etc.\nPlease consult the AivikaSoft [3] website for more details.\n\nRegarding the speed of simulation, the rough estimations are as follows. The simulation is slower up to\n6-9 times in comparison with the sequential aivika [2] simulation library using the equivalent sequential models.\nNote that you can run up to 7 parallel local processes on a single 8-core processor computer and run the Time Server\nprocess too. On a 36-core processor, you can launch up to 35 local processes simultaneously.\n\nSo, this estimation seems to be quite good. At the same time, the message passing between the local processes can\ndramatically decrease the speed of distributed simulation, especially if they cause rollbacks. Thus, much depends on\nthe distributed model itself.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[2] <http://hackage.haskell.org/package/aivika>\n\n\\[3] <http://www.aivikasoft.com>\n";
        buildType = "Simple";
      };
      components = {
        aivika-distributed = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.random
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.distributed-process
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }