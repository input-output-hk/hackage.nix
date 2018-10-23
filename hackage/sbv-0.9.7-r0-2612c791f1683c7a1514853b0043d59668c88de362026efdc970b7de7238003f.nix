{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sbv";
        version = "0.9.7";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2011";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/sbv";
      url = "";
      synopsis = "Symbolic Bit Vectors: Prove bit-precise program properties using SMT solvers.";
      description = "Express properties about bit-precise Haskell programs and automatically prove\nthem using SMT solvers. The SBV library adds support for symbolic bit vectors,\nallowing formal models of bit-precise programs to be created.\n\n>   \$ ghci -XScopedTypeVariables\n>   Prelude> :m Data.SBV\n>   Prelude Data.SBV> prove \$ \\(x::SWord8) -> x `shiftL` 2 .== 4*x\n>   Q.E.D.\n>   Prelude Data.SBV> prove \$ forAll [\"x\"] \$ \\(x::SWord8) -> x `shiftL` 2 .== x\n>   Falsifiable. Counter-example:\n>     x = 128 :: SWord8\n\nThe library introduces the following types and concepts:\n\n* 'SBool': Symbolic Booleans (bits)\n\n* 'SWord8', 'SWord16', 'SWord32', 'SWord64': Symbolic Words (unsigned)\n\n* 'SInt8',  'SInt16',  'SInt32',  'SInt64': Symbolic Ints (signed)\n\n* 'SArray', 'SFunArray': Flat arrays of symbolic values\n\n* Symbolic polynomials over GF(2^n), and polynomial arithmetic\n\n* Uninterpreted constants and functions over symbolic values\n\nPredicates (i.e., functions that return 'SBool') built out of\nthese types can be:\n\n* proven correct via an external SMT solver (the 'prove' function)\n\n* checked for satisfiability (the 'sat' and 'allSat' functions)\n\n* quick-checked\n\nIn addition to the library, the installation will create the\nexecutable @SBVUnitTests@. You should run it once the installation is complete,\nto make sure the unit tests are run and all is well.\n\nSBV is hosted at GitHub: <http://github.com/LeventErkok/sbv>. Comments,\nbug reports, and patches are always welcome.";
      buildType = "Custom";
    };
    components = {
      "sbv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.strict-concurrency)
          (hsPkgs.old-time)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.HUnit)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = { "SBVUnitTests" = {}; };
    };
  }