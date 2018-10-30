{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      forcechar8 = false;
      buildtoyfmf = false;
      buildsampleprograms = false;
      buildmiscprograms = false;
      exceptions06 = true;
      random1013 = true;
      time15 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "toysolver";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Assorted decision procedures for SAT, Max-SAT, PB, MIP, etc";
      description = "Toy-level implementation of some decision procedures";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.stm)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
          (hsPkgs.time)
          (hsPkgs.primes)
          (hsPkgs.process)
          (hsPkgs.parse-dimacs)
          (hsPkgs.queue)
          (hsPkgs.heaps)
          (hsPkgs.unbounded-delays)
          (hsPkgs.vector-space)
          (hsPkgs.multiset)
          (hsPkgs.prettyclass)
          (hsPkgs.type-level-numbers)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          (hsPkgs.loop)
          (hsPkgs.data-default-class)
          (hsPkgs.OptDir)
          (hsPkgs.extended-reals)
          (hsPkgs.data-interval)
          (hsPkgs.finite-field)
          (hsPkgs.sign)
          (hsPkgs.pseudo-boolean)
        ] ++ [
          (hsPkgs.temporary)
          (hsPkgs.exceptions)
        ]) ++ (if flags.random1013
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [
            (hsPkgs.random)
          ])) ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.ghc-prim);
      };
      exes = {
        "toysolver" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.data-default-class)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.OptDir)
            (hsPkgs.parse-dimacs)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ];
        };
        "toysat" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.data-default-class)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.parse-dimacs)
            (hsPkgs.unbounded-delays)
            (hsPkgs.vector-space)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ] ++ (if flags.time15
            then [ (hsPkgs.time) ]
            else [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ])) ++ pkgs.lib.optional (flags.forcechar8 && (compiler.isGhc && true)) (hsPkgs.base);
        };
        "toyfmf" = {
          depends  = pkgs.lib.optionals (flags.buildtoyfmf) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.logic-TPTP)
          ];
        };
        "lpconvert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.parse-dimacs)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ];
        };
        "pbconvert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.parse-dimacs)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ];
        };
        "sudoku" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.toysolver)
          ];
        };
        "nqueens" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.toysolver)
          ];
        };
        "knapsack" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.toysolver)
          ];
        };
        "htc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
          ];
        };
        "pigeonhole" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ];
        };
        "maxsatverify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.toysolver)
          ];
        };
        "pbverify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.pseudo-boolean)
            (hsPkgs.toysolver)
          ];
        };
      };
      tests = {
        "TestSAT" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestSimplex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
          ];
        };
        "TestSimplex2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
          ];
        };
        "TestMIPSolver2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.OptDir)
            (hsPkgs.stm)
          ];
        };
        "TestPolynomial" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-interval)
            (hsPkgs.finite-field)
            (hsPkgs.prettyclass)
          ];
        };
        "TestAReal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-interval)
          ];
        };
        "TestArith" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.toysolver)
            (hsPkgs.data-interval)
            (hsPkgs.OptDir)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestContiTraverso" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.toysolver)
            (hsPkgs.OptDir)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestCongruenceClosure" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestLPFile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestMPSFile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestSDPFile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "TestUtil" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.toysolver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "BenchmarkSATLIB" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.parse-dimacs)
            (hsPkgs.toysolver)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }