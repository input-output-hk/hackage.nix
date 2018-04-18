{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ansigraph";
          version = "0.3.0.4";
        };
        license = "MIT";
        copyright = "2015-2016 Cliff Harvey";
        maintainer = "cs.hbar+hs@gmail.com";
        author = "Cliff Harvey";
        homepage = "https://github.com/BlackBrane/ansigraph";
        url = "";
        synopsis = "Terminal-based graphing via ANSI and Unicode";
        description = "Ansigraph is an ultralightweight terminal-based graphing utility. It uses\nUnicode characters and ANSI escape codes to display and animate colored graphs\nof vectors/functions in real and complex variables.\n\nThis functionality is provided by a 'Graphable' type class, whose method\n'graphWith' draws a graph at the terminal. Another function 'animateWith' takes\na list of Graphable elements and displays an animation by rendering them in\nsequence. Both of these functions take an options record as an argument. The\n'graph' and 'animate' functions are defined to use the default options, and the\nuser can define similar functions based on their own settings.\n\nThere are two main ways to use the package.\nImporting \"System.Console.Ansigraph\" provides all the functionality we\ntypically use. This includes the /FlexibleInstances/ extension, which makes it\nmarginally more convenient to use graphing functions by allowing instances like\n'Graphable [Double]'.\n\nIf you want to use the package without activating /FlexibleInstances/ then you\ncan import \"System.Console.Ansigraph.Core\", which provides everything except\nthese instances. Then you must use one of a few newtype wrappers, namely:\n'Graph', 'PosGraph', 'CGraph', 'Mat', 'CMat'. These wrappers are also\navailable from the standard 'Ansigraph' module.\n\nThe \"System.Console.Ansigraph.Examples\" module contains examples of all the\ngraph types, and also shows the available ANSI colors.";
        buildType = "Simple";
      };
      components = {
        ansigraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
        };
        tests = {
          test-ansigraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansigraph
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }