{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "aivika";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2014. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "A multi-paradigm simulation library";
      description = "Aivika is a multi-paradigm simulation library with a strong emphasis\non the Discrete Event Simulation (DES) in the first order and\nSystem Dynamics (SD) in the second one.\n\nThe library has the following features:\n\n* allows defining recursive stochastic differential equations of\nSystem Dynamics (unordered as in maths via the recursive do-notation);\n\n* supports the event-driven paradigm of DES as a basic core for\nimplementing other paradigms;\n\n* supports extensively the process-oriented paradigm of DES\nwith an ability to resume, suspend and cancel\nthe discontinuous processes;\n\n* allows working with the resources (you can define your own behaviour\nor use the predefined queue strategies);\n\n* allows customizing the queues (you can define your own behaviour\nor use the predefined queue strategies);\n\n* allows defining an infinite stream of data based on the\nprocess-oriented computation, where we can define a complex enough\nbehaviour just in a few lines of code;\n\n* allows defining processors (actually, the Haskell arrows) that\noperate on the infinite streams of data, because of which some models\ncan remind of their high-level graphical representation on the\ndiagram used by visual simulation software tools;\n\n* allows simulating circuits with recursive links and delays;\n\n* supports the activity-oriented paradigm of DES;\n\n* supports the basic constructs for the agent-based modeling;\n\n* allows creating combined discrete-continuous models as all parts\nof the library are very well integrated and this is reflected\ndirectly in the type system;\n\n* the arrays of simulation variables are inherently supported\n(this is mostly a feature of Haskell itself);\n\n* supports the Monte-Carlo simulation;\n\n* the simulation model can depend on external parameters;\n\n* uses extensively the signals to notify the model about changing\nthe reference and variable values;\n\n* allows gathering statistics in time points;\n\n* hides the technical details in high-level simulation monads\nand even one arrow (some of these monads support the recursive\ndo-notation).\n\nAivika itself is a light-weight engine with minimal dependencies.\nHowever, it has additional packages Aivika Experiment [1] and\nAivika Experiment Chart [2] that offer the following features:\n\n* automating the simulation experiments;\n\n* saving the results in CSV files;\n\n* plotting the deviation chart by rule 3-sigma, histogram,\ntime series, XY chart;\n\n* collecting the summary of statistical data;\n\n* parallel execution of the Monte-Carlo simulation;\n\n* have an extensible architecture.\n\nAll three libraries were tested on Linux, Windows and OS X.\n\nPlease read the PDF document An Introduction to\nAivika Simulation Library [3] for more details, although it is\noutdated and contains a very basic description only. The most powerful\nfeatures of Aivika are not yet described in this PDF document.\n\n\\[1] <http://hackage.haskell.org/package/aivika-experiment>\n\n\\[2] <http://hackage.haskell.org/package/aivika-experiment-chart>\n\n\\[3] <https://github.com/dsorokin/aivika/blob/master/doc/aivika.pdf>\n\nP.S. Aivika is actually a genuine female Mari name which is pronounced\nwith stress on the last syllable as in French, but the Russians usually\npronounce it wrong :)";
      buildType = "Simple";
    };
    components = {
      "aivika" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
        ];
      };
    };
  }