{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "GrammarProducts";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2013-2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2013-2015";
        homepage = "http://www.bioinf.uni-leipzig.de/gADP/";
        url = "";
        synopsis = "Grammar products and higher-dimensional grammars";
        description = "An algebra of liner and context-free grammars.\n\nThis library provides the implementation of our theory of\nalgebraic operations over linear and context-free grammars.\nUsing algebraic operations, it is possible to construct complex\ndynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product\nof grammars which naturally leads to alignment-like algorithms\non multiple tapes.\n\nAn efficient implementation of the resulting grammars is\npossible via the ADPfusion framework. The @FormalGrammars@\nlibrary provides the required \"Template Haskell\" machinery.\nGramarProducts can be integrated as a plugin into the existing\ntransformation from DSL to ADPfusion. Haskell users can just\nuse the QQ function provided in the .QQ module.\n\nAlternatively, the resulting grammars can also be\npretty-printed in various ways (LaTeX, ANSI, Haskell module\nwith signature and grammar).\n\n\n\nFormal background can be found in two papers:\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler.\nProduct Grammars for Alignment and Folding.\n2014. IEEE/ACM Transactions on Computational Biology and Bioinformatics. 99.\n<http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6819790>\n@\n\nand\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nHow to Multiply Dynamic Programming Algorithms\nBrazilian Symposium on Bioinformatics (BSB 2013)\nLecture Notes in Bioinformatics 8213, Springer, Heidelberg\n@\n";
        buildType = "Simple";
      };
      components = {
        GrammarProducts = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-wl-pprint
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.FormalGrammars
            hsPkgs.lens
            hsPkgs.newtype
            hsPkgs.parsers
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.trifecta
          ];
        };
        exes = {
          AlignGlobal = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.containers
              hsPkgs.FormalGrammars
              hsPkgs.GrammarProducts
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
        };
      };
    }