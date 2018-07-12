{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      forcechar8 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "toysolver";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Assorted decision procedures";
        description = "Toy-level implementation of some decision procedures";
        buildType = "Simple";
      };
      components = {
        "toysolver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.primes
            hsPkgs.parse-dimacs
            hsPkgs.queue
            hsPkgs.heaps
            hsPkgs.unbounded-delays
            hsPkgs.OptDir
          ];
        };
        exes = {
          "toysolver" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.OptDir
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
            ];
          };
          "toysat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.unbounded-delays
              hsPkgs.toysolver
            ] ++ pkgs.lib.optional (_flags.forcechar8 && (compiler.isGhc && true)) hsPkgs.base;
          };
          "toyfmf" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.logic-TPTP
            ];
          };
          "lpconvert" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
            ];
          };
        };
        tests = {
          "TestSAT" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          "TestSimplex2" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          "TestMIPSolver2" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.OptDir
              hsPkgs.stm
            ];
          };
          "TestPolynomial" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestInterval" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestAReal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestQE" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.OptDir
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestContiTraverso" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.OptDir
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestLPFile" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestMPSFile" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestPBFile" = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          "TestUtil" = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          "BenchmarkSATLIB" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.parse-dimacs
              hsPkgs.toysolver
              hsPkgs.criterion
            ];
          };
        };
      };
    }