{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      llvm = false;
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "ADPfusion";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2011-2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2011-2015";
        homepage = "http://www.bioinf.uni-leipzig.de/Software/gADP/";
        url = "";
        synopsis = "Efficient, high-level dynamic programming.";
        description = "ADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nADPfusion allows writing dynamic programs for single- and\nmulti-tape problems. Inputs can be sequences, or sets. And new\ninput types can be defined, without having to rewrite this\nlibrary thanks to the open-world assumption of ADPfusion.\n\nThe library provides the machinery for Outside and Ensemble\nalgorithms as well. Ensemble algorithms combine Inside and\nOutside calculations.\n\nThe homepage provides a number of tutorial-style examples, with\nlinear and context-free grammars over sequence and set inputs.\n\nIdeas implemented here are described in a couple of papers:\n\n@\nChristian Hoener zu Siederdissen\nSneaking Around ConcatMap: Efficient Combinators for Dynamic Programming\n2012. Proceedings of the 17th ACM SIGPLAN international conference on Functional programming\n<http://doi.acm.org/10.1145/2364527.2364559> preprint: <http://www.tbi.univie.ac.at/newpapers/pdfs/TBI-p-2012-2.pdf>\n@\n\n@\nAndrew Farmer, Christian Höner zu Siederdissen, and Andy Gill.\nThe HERMIT in the stream: fusing stream fusion’s concatMap.\n2014. Proceedings of the ACM SIGPLAN 2014 workshop on Partial evaluation and program manipulation.\n<http://dl.acm.org/citation.cfm?doid=2543728.2543736>\n@\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler.\nProduct Grammars for Alignment and Folding.\n2014. IEEE/ACM Transactions on Computational Biology and Bioinformatics. 99.\n<http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6819790>\n@\n\n@\nChristian Höner zu Siederdissen, Sonja J. Prohaska, and Peter F. Stadler.\nAlgebraic Dynamic Programming over General Data Structures.\n2015. submitted.\n@\n";
        buildType = "Simple";
      };
      components = {
        ADPfusion = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits
            hsPkgs.mmorph
            hsPkgs.monad-primitive
            hsPkgs.mtl
            hsPkgs.OrderedBits
            hsPkgs.primitive
            hsPkgs.PrimitiveArray
            hsPkgs.QuickCheck
            hsPkgs.strict
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.vector
          ];
        };
        exes = {
          NeedlemanWunsch = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
          Nussinov = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
          PartNussinov = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.log-domain
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
          Durbin = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }