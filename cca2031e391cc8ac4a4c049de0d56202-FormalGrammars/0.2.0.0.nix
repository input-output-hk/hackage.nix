{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      llvm = false;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "FormalGrammars";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2013-2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2013-2015";
        homepage = "http://www.bioinf.uni-leipzig.de/Software/gADP/";
        url = "";
        synopsis = "(Context-free) grammars in formal language theory";
        description = "Context-free grammars in formal language theory are sets of\nproduction rules, non-terminal and terminal symbols. This\nlibrary provides basic data types and functions to manipulate\nsuch grammars.\n\nGrammars can be defined in a small domain-specific language\nthat is very close to typical CFG notation. The DSL parser can\neasily be extended. Grammar products, for example, are\nimplemented as a single additional sub-parser.\n\nThis library also provides the machinery that transforms an\nInside grammar into the corresponding Outside grammar.\n\nIn addition, TemplateHaskell and QuasiQuoting functionality\nallow embedding thusly defined grammars in Haskell programs.\nADPfusion then turns such a grammar into an efficient dynamic\nprogram. It is also possible to generate Haskell modules that\ncontain the resulting grammar, signature and algebra product.\n\nAlternatives are ansi- or LaTeX-based pretty-printing for users\nthat want to implement their CFG in another language than\nHaskell.\n\n\n\n\nFormal background can be found in these papers:\n\n@\nChristian Hoener zu Siederdissen\nSneaking Around ConcatMap: Efficient Combinators for Dynamic Programming\n2012. Proceedings of the 17th ACM SIGPLAN international conference on Functional programming\n<http://doi.acm.org/10.1145/2364527.2364559> preprint: <http://www.tbi.univie.ac.at/newpapers/pdfs/TBI-p-2012-2.pdf>\n@\n\n@\nAndrew Farmer, Christian Höner zu Siederdissen, and Andy Gill.\nThe HERMIT in the stream: fusing stream fusion’s concatMap.\n2014. Proceedings of the ACM SIGPLAN 2014 workshop on Partial evaluation and program manipulation.\n<http://dl.acm.org/citation.cfm?doid=2543728.2543736>\n@\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler.\nProduct Grammars for Alignment and Folding.\n2014. IEEE/ACM Transactions on Computational Biology and Bioinformatics. 99.\n<http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6819790>\n@\n\n@\nChristian Höner zu Siederdissen, Sonja J. Prohaska, and Peter F. Stadler.\nAlgebraic Dynamic Programming over General Data Structures.\n2015. submitted.\n@\n";
        buildType = "Simple";
      };
      components = {
        "FormalGrammars" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ADPfusion
            hsPkgs.ansi-wl-pprint
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.HaTeX
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.parsers
            hsPkgs.PrimitiveArray
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.trifecta
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "GrammarPP" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-wl-pprint
              hsPkgs.cmdargs
              hsPkgs.FormalGrammars
            ];
          };
          "NussinovFG" = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.FormalGrammars
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
          "NeedlemanWunschFG" = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.containers
              hsPkgs.FormalGrammars
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
        };
      };
    }