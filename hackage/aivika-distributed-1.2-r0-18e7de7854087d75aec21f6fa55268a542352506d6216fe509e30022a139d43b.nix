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
      specVersion = "1.6";
      identifier = { name = "aivika-distributed"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Parallel distributed discrete event simulation module for the Aivika library";
      description = "This package extends the aivika-transformers [1] package and allows running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method. To synchronize the global virtual time,\nit uses Samadi's algorithm.\n\nMoreover, this package uses the author's modification that allows recovering the distributed\nsimulation after temporary connection errors whenever possible. For that, you have to enable explicitly\nthe recovering mode and enable the monitoring of all logical processes including the specialized Time Server process\nas it is shown in one of the test examples included in the distribution.\n\nWith the recovering mode enabled, you can try to build a distributed simulation using ordinary computers connected\nvia the ordinary net. For example, such a distributed model could even consist of computers located in different\ncontinents of the Earth, where the computers could be connected through the Internet. Here the most exciting thing\nis that this is the optimistic distributed simulation with possible rollbacks. It is assumed that optimistic methods\ntend to better support the parallelism inherited in the models.\n\nYou can test the distributed simulation using your own laptop, although the package is still destined to be\nused with a multi-core computer, or computers connected in the distributed cluster.\n\nThere are additional packages that allow you to run the distributed simulation experiments by using\nthe Monte-Carlo method. They allow you to save the simulation results in SQL databases and then generate a report\nor a set of reports consisting of HTML pages with charts, histograms, links to CSV tables, summary statistics etc.\nPlease consult the AivikaSoft [3] website for more details.\n\nRegarding the speed of simulation, the recent rough estimation is as follows. This estimation may change from\nversion to version. For example, in version 1.0 the rollback log was rewritten, which had a significant effect.\n\nThe distributed simulation module is slower up to 8-15 times in comparison with the sequential aivika [2] simulation\nlibrary using the equivalent sequential models. The lower estimation in 8 times is likely to correspond to complex\nmodels. The upper estimation in 15 times will probably correspond to quite simple event-oriented and process-oriented\nmodels, where the sequential module can be exceptionally fast. At the same time, the message passing between\nthe logical processes can dramatically decrease the speed of distributed simulation, especially if the messages cause\nrollbacks. Thus, much depends on the distributed model itself.\n\nWhen residing the logical processes in a computer with multi-core processor, you should follow the next recommendations.\nYou should reserve at least 1 core for each logical process, or even reserve 2 cores if the logical process extensively\nsends and receives messages. Also you should additionally reserve at least 1 or 2 cores for each computational node.\nThese additional processor cores will be used by the GHC run-time system that includes the garbage collector as well.\nThe Aivika distributed module creates a huge amount of short-living small objects. Therefore, the garbage collector\nneeds at least one core to utilize efficiently these objects.\n\nYou should compile your code with options -O2 and -threaded, but then launch it with run-time options +RTS -N.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[2] <http://hackage.haskell.org/package/aivika>\n\n\\[3] <http://www.aivikasoft.com>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."aivika" or (buildDepError "aivika"))
          (hsPkgs."aivika-transformers" or (buildDepError "aivika-transformers"))
          ];
        };
      };
    }