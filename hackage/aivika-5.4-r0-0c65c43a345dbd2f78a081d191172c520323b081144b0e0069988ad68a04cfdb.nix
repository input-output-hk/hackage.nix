{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aivika"; version = "5.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2017. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "A multi-method simulation library";
      description = "Aivika is a discrete event simulation (DES) framework with support of activity-oriented,\nevent-oriented and process-oriented paradigms. It supports resource preemption and other\nimproved simulation techniques. There is also a partial support of system dynamics and\nagent-based modelling. All the complexity is hidden under easy-to-use computations.\n\nThe represented package is a basic simulation library optimized for sequential execution.\nThere are also packages for nested and parallel distributed simulation.\n\nThe library has the following features:\n\n* allows defining recursive stochastic differential equations of\nsystem dynamics (unordered as in maths via the recursive do-notation);\n\n* supports the event-driven paradigm of DES as a basis for\nimplementing other paradigms;\n\n* supports extensively the process-oriented paradigm of DES\nwith an ability to resume, suspend and cancel\nthe discontinuous processes;\n\n* allows working with the resources based on specified queue strategies\n(FCFS\\/FIFO, LCFS\\/LIFO, SIRO, static priorities and so on);\n\n* allows customizing the unbounded and bounded queues based on strategies too;\n\n* supports the resource preemption;\n\n* allows defining a queue network based on streams of data (transacts);\n\n* allows using a GPSS-like DSL with help of the additional library;\n\n* allows simulating circuits with recursive links and delays;\n\n* supports the activity-oriented paradigm of DES;\n\n* supports basic constructs for the agent-based modeling such as\nagents, states, timeout and timer handlers;\n\n* allows creating combined discrete-continuous models as all parts\nof the library are well integrated and this is reflected directly\nin the type system;\n\n* the arrays of simulation variables are inherently supported;\n\n* supports the Monte-Carlo simulation;\n\n* the simulation model can depend on external parameters;\n\n* uses extensively signals for notification;\n\n* allows gathering statistics in time points;\n\n* hides technical details in high-level simulation computations\n(monads, streams and arrows).\n\nThe simulation engine itself has minimal dependencies.\nHowever, there are additional packages [1, 2] that offer the following\nfeatures:\n\n* automating simulation experiments;\n\n* saving the results in CSV files;\n\n* plotting the deviation chart by rule 3-sigma, histogram,\ntime series, XY chart;\n\n* collecting the summary of statistical data;\n\n* parallel execution of the Monte-Carlo simulation;\n\n* has an extensible architecture.\n\nThe charting package has two interchangeable back-ends [3, 4],\nwhere one of them uses Cairo and it creates small PNG images, while another\ncreates more detailed SVG files and it can be used on Windows.\n\nThere are also additional packages that allow saving the results of simulation\nin SQL databases. Then the results can be accessed from other software applications.\nFor example, it can be useful when creating flight simulators in other programming languages\nsuch as C# or Java.\n\nMoreover, the method was generalized [5] and applied to\nnested simulation [6] and parallel distributed simulation [7].\n\nThe libraries were tested on Linux, Windows and OS X.\n\nThe PDF documentation, installation instructions and a more full information about Aivika\nare available on the the AivikaSoft website [8].\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[3] <http://hackage.haskell.org/package/aivika-experiment-cairo>\n\n\\[4] <http://hackage.haskell.org/package/aivika-experiment-diagrams>\n\n\\[5] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[6] <http://hackage.haskell.org/package/aivika-branches>\n\n\\[7] <http://hackage.haskell.org/package/aivika-distributed>\n\n\\[8] <http://www.aivikasoft.com>\n\nP.S. Aivika is actually a genuine female Mari name which is pronounced\nwith stress on the last syllable.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.mwc-random)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          ];
        };
      };
    }