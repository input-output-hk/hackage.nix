{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste-inst = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aivika";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2014. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://github.com/dsorokin/aivika";
        url = "";
        synopsis = "A multi-paradigm simulation library";
        description = "Aivika is a multi-paradigm simulation library with a strong emphasis\non Discrete Event Simulation (DES) and System Dynamics (SD).\n\nThe library has the following features:\n\n* allows defining recursive stochastic differential equations of\nSystem Dynamics (unordered as in maths via the recursive do-notation);\n\n* supports the event-driven paradigm of DES as a basic core for\nimplementing other paradigms;\n\n* supports extensively the process-oriented paradigm of DES\nwith an ability to resume, suspend and cancel\nthe discontinuous processes;\n\n* allows working with the resources based on specified queue strategies\n(FCFS\\/FIFO, LCFS\\/LIFO, SIRO, static priorities and so on);\n\n* allows customizing the infinite and finite queues based on strategies too;\n\n* allows defining a queue network based on infinite streams of data\nand their processors, where we can define a complex enough\nbehaviour just in a few lines of code;\n\n* allows simulating circuits with recursive links and delays;\n\n* supports the activity-oriented paradigm of DES;\n\n* supports the basic constructs for the agent-based modeling;\n\n* allows creating combined discrete-continuous models as all parts\nof the library are well integrated and this is reflected directly\nin the type system;\n\n* the arrays of simulation variables are inherently supported;\n\n* supports the Monte-Carlo simulation;\n\n* the simulation model can depend on external parameters;\n\n* uses extensively signals for notification;\n\n* allows gathering statistics in time points;\n\n* hides technical details in high-level simulation computations\n(monads and arrows).\n\nAivika itself is a light-weight engine with minimal dependencies.\nHowever, it has additional packages Aivika Experiment [1] and\nAivika Experiment Chart [2] that offer the following features:\n\n* automating the simulation experiments;\n\n* saving the results in CSV files;\n\n* plotting the deviation chart by rule 3-sigma, histogram,\ntime series, XY chart;\n\n* collecting the summary of statistical data;\n\n* parallel execution of the Monte-Carlo simulation;\n\n* have an extensible architecture.\n\nAll three libraries were tested on Linux, Windows and OS X.\n\nThe PDF documentation is available on the Aivika Wiki [3] website.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[3] <https://github.com/dsorokin/aivika/wiki>\n\nP.S. Aivika is actually a genuine female Mari name which is pronounced\nwith stress on the last syllable.";
        buildType = "Simple";
      };
      components = {
        "aivika" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
          ] ++ pkgs.lib.optional (!_flags.haste-inst) hsPkgs.vector;
        };
      };
    }