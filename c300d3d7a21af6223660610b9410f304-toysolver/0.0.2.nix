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
          version = "0.0.2";
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
        exes = {
          "toysolver" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.OptDir
              hsPkgs.deepseq
              hsPkgs.stm
              hsPkgs.parse-dimacs
            ];
          };
          "toysat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.random
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.parse-dimacs
              hsPkgs.queue
              hsPkgs.OptDir
              hsPkgs.time
              hsPkgs.old-locale
            ] ++ pkgs.lib.optional (_flags.forcechar8 && (compiler.isGhc && true)) hsPkgs.base;
          };
          "lp2yices" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.OptDir
            ];
          };
          "cnf2lp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.parse-dimacs
              hsPkgs.OptDir
            ];
          };
          "maxsat2lp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.parsec
              hsPkgs.OptDir
            ];
          };
          "pb2lp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.parsec
              hsPkgs.OptDir
            ];
          };
        };
        tests = {
          "TestSAT" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.queue
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.OptDir
            ];
          };
          "TestSimplex2" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.queue
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.OptDir
            ];
          };
          "TestMIPSolver2" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.queue
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
              hsPkgs.heaps
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
              hsPkgs.heaps
              hsPkgs.primes
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
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.OptDir
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
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.parsec
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
              hsPkgs.queue
              hsPkgs.parse-dimacs
              hsPkgs.criterion
            ];
          };
        };
      };
    }