{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "sbv";
          version = "2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2010-2012";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://github.com/LeventErkok/sbv";
        url = "";
        synopsis = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.";
        description = "Express properties about Haskell programs and automatically prove them using SMT\n(Satisfiability Modulo Theories) solvers. Automatically generate C programs from\nHaskell functions. The SBV library adds support for symbolic bit vectors and other\nsymbolic types, allowing formal models of Haskell programs to be created.\n\n>   \$ ghci -XScopedTypeVariables\n>   Prelude> :m Data.SBV\n>   Prelude Data.SBV> prove \$ \\(x::SWord8) -> x `shiftL` 2 .== 4*x\n>   Q.E.D.\n>   Prelude Data.SBV> prove \$ forAll [\"x\"] \$ \\(x::SWord8) -> x `shiftL` 2 .== x\n>   Falsifiable. Counter-example:\n>     x = 128 :: SWord8\n\nThe SBV library uses Microsoft's Z3 SMT solver (<http://research.microsoft.com/en-us/um/redmond/projects/z3/>) as the default underlying solver. It is also possible to use SRI's Yices SMT solver with SBV as well (<http://yices.csl.sri.com/download-yices2.shtml>), although the Z3 binding is much more richer.\n\nSBV introduces the following types and concepts:\n\n* 'SBool': Symbolic Booleans (bits)\n\n* 'SWord8', 'SWord16', 'SWord32', 'SWord64': Symbolic Words (unsigned)\n\n* 'SInt8',  'SInt16',  'SInt32',  'SInt64': Symbolic Ints (signed)\n\n* 'SInteger': Symbolic unbounded integers (signed)\n\n* 'SReal': Symbolic algebraic reals (signed)\n\n* 'SArray', 'SFunArray': Flat arrays of symbolic values\n\n* 'STree': Full binary trees of symbolic values (for fast symbolic access)\n\n* Symbolic polynomials over GF(2^n), and polynomial arithmetic\n\n* Uninterpreted constants and functions over symbolic values, with user defined axioms.\n\n* Uninterpreted sorts, and proofs over such sorts, potentially with axioms.\n\nFunctions built out of these types can be:\n\n* proven correct via an external SMT solver (the 'prove' function)\n\n* checked for satisfiability (the 'sat', and 'allSat' functions)\n\n* used in synthesis (the 'sat' function with existential variables)\n\n* optimized with respect to cost functions (the 'optimize', 'maximize',\nand 'minimize' functions)\n\n* quick-checked\n\n* used in concrete test case generation (the 'genTest' function), rendered as\nvalues in various languages, including Haskell and C.\n\nPredicates can have both existential and universal variables. Use of\nalternating quantifiers provides considerable expressive power.\nFurthermore, existential variables allow synthesis via model generation.\n\nThe SBV library can also compile Haskell functions that manipulate symbolic\nvalues directly to C, rendering them as straight-line C programs.\n\nIn addition to the library, the installation will create the\nexecutable @SBVUnitTests@. You should run it once the installation is complete,\nto make sure the unit tests are run and all is well.\n\nSBV is hosted at GitHub: <http://github.com/LeventErkok/sbv>. Comments,\nbug reports, and patches are always welcome.\n\nThe following people reported bugs, provided comments/feedback, or contributed to the\ndevelopment of SBV in various ways: Ian Blumenfeld, Ian Calvert, Iavor Diatchki, John\nErickson, Tom Hawkins, Lee Pike, Austin Seipp, Don Stewart, Josef Svenningsson, and\nNis Wegmann.\n\nRelease notes can be seen at: <http://github.com/LeventErkok/sbv/blob/master/RELEASENOTES>.";
        buildType = "Simple";
      };
      components = {
        sbv = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.old-time
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.strict-concurrency
            hsPkgs.syb
          ];
        };
        exes = {
          SBVUnitTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.sbv
            ];
          };
        };
        tests = {
          SBVBasicTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.sbv
            ];
          };
        };
      };
    }