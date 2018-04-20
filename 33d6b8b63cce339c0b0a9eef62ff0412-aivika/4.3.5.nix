{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aivika";
          version = "4.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2016. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com/en/products/aivika.html";
        url = "";
        synopsis = "A multi-method simulation library";
        description = "Aivika is a multi-method simulation library focused on\ndiscrete event simulation (DES) with partial support of\nsystem dynamics and agent-based modeling.\n\nThe library has the following features:\n\n* allows defining recursive stochastic differential equations of\nsystem dynamics (unordered as in maths via the recursive do-notation);\n\n* supports the event-driven paradigm of DES as a basic core for\nimplementing other paradigms;\n\n* supports extensively the process-oriented paradigm of DES\nwith an ability to resume, suspend and cancel\nthe discontinuous processes;\n\n* allows working with the resources based on specified queue strategies\n(FCFS\\/FIFO, LCFS\\/LIFO, SIRO, static priorities and so on);\n\n* allows customizing the infinite and finite queues based on strategies too;\n\n* supports the resource preemption;\n\n* allows defining a queue network based on streams of data (transacts)\nand their processors;\n\n* allows simulating circuits with recursive links and delays;\n\n* supports the activity-oriented paradigm of DES;\n\n* supports basic constructs for the agent-based modeling such as\nagents, states, timeout and timer handlers;\n\n* allows creating combined discrete-continuous models as all parts\nof the library are well integrated and this is reflected directly\nin the type system;\n\n* the arrays of simulation variables are inherently supported;\n\n* supports the Monte-Carlo simulation;\n\n* the simulation model can depend on external parameters;\n\n* uses extensively signals for notification;\n\n* allows gathering statistics in time points;\n\n* hides technical details in high-level simulation computations\n(monads, streams and arrows).\n\nAivika itself is a light-weight engine with minimal dependencies.\nHowever, it has additional packages [1, 2] that offer the following\nfeatures:\n\n* automating simulation experiments;\n\n* saving the results in CSV files;\n\n* plotting the deviation chart by rule 3-sigma, histogram,\ntime series, XY chart;\n\n* collecting the summary of statistical data;\n\n* parallel execution of the Monte-Carlo simulation;\n\n* has an extensible architecture.\n\nThe charting package has two interchangeable back-ends [3, 4],\nwhere one of them uses Cairo and it is more preferable.\n\nThe PDF documentation and installation instructions are\navailable on the Aivika Wiki website [5].\n\nMoreover, the method was generalized [6] and applied to\nnested simulation [7] and parallel distributed simulation [8].\n\nThe libraries were tested on Linux, Windows and OS X.\n\nA more full information about Aivika is available on the project website [9].\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[3] <http://hackage.haskell.org/package/aivika-experiment-cairo>\n\n\\[4] <http://hackage.haskell.org/package/aivika-experiment-diagrams>\n\n\\[5] <https://github.com/dsorokin/aivika/wiki>\n\n\\[6] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[7] <http://hackage.haskell.org/package/aivika-branches>\n\n\\[8] <http://hackage.haskell.org/package/aivika-distributed>\n\n\\[9] <http://www.aivikasoft.com/en/products/aivika.html>\n\nP.S. Aivika is actually a genuine female Mari name which is pronounced\nwith stress on the last syllable.\n";
        buildType = "Simple";
      };
      components = {
        aivika = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.vector
          ];
        };
      };
    }