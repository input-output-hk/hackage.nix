{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      debugoutput = false;
      debugdump = false;
      examples = false;
      spectest = false;
      devel = false;
      btstruc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "ADPfusion";
          version = "0.5.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2011-2016";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2011-2016";
        homepage = "https://github.com/choener/ADPfusion";
        url = "";
        synopsis = "Efficient, high-level dynamic programming.";
        description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nADPfusion allows writing dynamic programs for single- and\nmulti-tape problems. Inputs can be sequences, or sets. New\ninput types can be defined, without having to rewrite this\nlibrary thanks to the open-world assumption of ADPfusion.\n\nThe library provides the machinery for Outside and Ensemble\nalgorithms as well. Ensemble algorithms combine Inside and\nOutside calculations.\n\nStarting with version 0.4.1 we support writing multiple\ncontext-free grammars (interleaved syntactic variables). Such\ngrammars have applications in bioinformatics and linguistics.\n\nThe homepage provides a number of tutorial-style examples, with\nlinear and context-free grammars over sequence and set inputs.\n\nThe formal background for generalized algebraic dynamic\nprogrmaming and ADPfusion is described in a number of papers.\nThese can be found on the gADP homepage and in the README.\n";
        buildType = "Simple";
      };
      components = {
        ADPfusion = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits
            hsPkgs.containers
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.QuickCheck
            hsPkgs.strict
            hsPkgs.template-haskell
            hsPkgs.th-orphans
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.DPutils
            hsPkgs.OrderedBits
            hsPkgs.PrimitiveArray
          ];
        };
        exes = {
          NeedlemanWunsch = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.base
              hsPkgs.ADPfusion
              hsPkgs.primitive
              hsPkgs.PrimitiveArray
              hsPkgs.template-haskell
              hsPkgs.vector
            ];
          };
          spectest = {
            depends  = pkgs.lib.optionals _flags.spectest [
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
              hsPkgs.bits
              hsPkgs.OrderedBits
              hsPkgs.PrimitiveArray
              hsPkgs.QuickCheck
              hsPkgs.strict
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          TestBacktrackingStructures = {
            depends  = pkgs.lib.optionals _flags.btstruc [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.fmlist
              hsPkgs.vector
              hsPkgs.criterion
            ];
          };
        };
      };
    }