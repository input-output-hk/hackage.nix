{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "minisat-solver";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2016 Peter Selinger,\nCopyright (c) 2015 Takahisa Toda,\nCopyright (c) 2005 Niklas Sorensson";
        maintainer = "selinger@mathstat.dal.ca";
        author = "Peter Selinger";
        homepage = "http://www.mathstat.dal.ca/~selinger/minisat-solver/";
        url = "";
        synopsis = "High-level Haskell bindings for the MiniSat SAT solver.";
        description = "This package provides high-level Haskell bindings for the well-known\nMiniSat satisfiability solver. It solves the boolean satisfiability\nproblem, i.e., the input is a boolean formula, and the output is a\nlist of all satisfying assignments.\nMiniSat is a fully automated, well-optimized general-purpose SAT\nsolver written by Niklas Een and Niklas Sorensson, and further\nmodified by Takahisa Toda.\nUnlike other similar Haskell packages, we provide a convenient\nhigh-level interface to the SAT solver, hiding the complexity of the\nunderlying C implementation. It can be easily integrated into other\nprograms as an efficient turn-key solution to many search problems.\nTo illustrate the use of the library, two example programs are\nincluded in the \"examples\" directory; one program solves Sudoku\npuzzles, and the other solves a 3-dimensional block packing\nproblem. These programs can be built manually, or by invoking Cabal\nwith the '--enable-benchmarks' option.";
        buildType = "Simple";
      };
      components = {
        minisat-solver = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
        benchmarks = {
          Sudoku = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.minisat-solver
            ];
          };
          Woodblocks = {
            depends  = [
              hsPkgs.base
              hsPkgs.easyrender
              hsPkgs.containers
              hsPkgs.minisat-solver
            ];
          };
        };
      };
    }