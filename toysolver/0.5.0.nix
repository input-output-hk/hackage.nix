{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      forcechar8 = false;
      linuxstatic = false;
      buildtoyfmf = false;
      buildsampleprograms = false;
      buildmiscprograms = false;
      logictptp045 = true;
      usehaskeline = true;
      opencl = false;
      testcbc = false;
      testcplex = false;
      testglpsol = false;
      testgurobicl = false;
      testlpsolve = false;
      testscip = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "toysolver";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "https://github.com/msakai/toysolver/";
        url = "";
        synopsis = "Assorted decision procedures for SAT, SMT, Max-SAT, PB, MIP, etc";
        description = "Toy-level implementation of some decision procedures";
        buildType = "Simple";
      };
      components = {
        toysolver = {
          depends  = ([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.data-interval
            hsPkgs.deepseq
            hsPkgs.extended-reals
            hsPkgs.filepath
            hsPkgs.finite-field
            hsPkgs.hashable
            hsPkgs.hashtables
            hsPkgs.heaps
            hsPkgs.intern
            hsPkgs.log-domain
            hsPkgs.loop
            hsPkgs.mtl
            hsPkgs.multiset
            hsPkgs.mwc-random
            hsPkgs.OptDir
            hsPkgs.lattices
            hsPkgs.megaparsec
            hsPkgs.prettyclass
            hsPkgs.primes
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.pseudo-boolean
            hsPkgs.queue
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.sign
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-space
            hsPkgs.xml-conduit
          ] ++ pkgs.lib.optional _flags.opencl hsPkgs.OpenCL) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        exes = {
          toysolver = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.filepath
              hsPkgs.OptDir
              hsPkgs.pseudo-boolean
              hsPkgs.scientific
              hsPkgs.toysolver
            ];
          };
          toysat = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.clock
              hsPkgs.data-default
              hsPkgs.data-default-class
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.megaparsec
              hsPkgs.mwc-random
              hsPkgs.process
              hsPkgs.pseudo-boolean
              hsPkgs.scientific
              hsPkgs.temporary
              hsPkgs.time
              hsPkgs.toysolver
              hsPkgs.unbounded-delays
              hsPkgs.vector
            ];
          };
          toysmt = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.intern
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.toysolver
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ] ++ pkgs.lib.optional _flags.usehaskeline hsPkgs.haskeline;
          };
          toyqbf = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.toysolver
            ];
          };
          toyfmf = {
            depends  = optionals _flags.buildtoyfmf ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.intern
              hsPkgs.logic-TPTP
              hsPkgs.text
              hsPkgs.toysolver
            ] ++ (if compiler.isGhc && _flags.logictptp045
              then [ hsPkgs.logic-TPTP ]
              else [
                hsPkgs.transformers-compat
              ]));
          };
          toyconvert = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
              hsPkgs.data-default-class
              hsPkgs.filepath
              hsPkgs.pseudo-boolean
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.toysolver
            ];
          };
          sudoku = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.toysolver
            ];
          };
          nonogram = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
            ];
          };
          nqueens = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.toysolver
            ];
          };
          numberlink = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.parsec
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          knapsack = {
            depends  = [
              hsPkgs.base
              hsPkgs.toysolver
            ];
          };
          assign = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.toysolver
              hsPkgs.vector
            ];
          };
          shortest-path = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.toysolver
            ];
          };
          htc = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.toysolver
            ];
          };
          svm2lp = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.scientific
              hsPkgs.split
              hsPkgs.text
              hsPkgs.toysolver
            ];
          };
          survey-propagation = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.toysolver
            ] ++ pkgs.lib.optional _flags.opencl hsPkgs.OpenCL;
          };
          pigeonhole = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
          maxsatverify = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.toysolver
            ];
          };
          pbverify = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.pseudo-boolean
              hsPkgs.toysolver
            ];
          };
        };
        tests = {
          TestPolynomial = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-interval
              hsPkgs.finite-field
              hsPkgs.prettyclass
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.toysolver
            ];
          };
          TestSuite = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.data-interval
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.intern
              hsPkgs.lattices
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.OptDir
              hsPkgs.parsec
              hsPkgs.pseudo-boolean
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.toysolver
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.vector-space
            ];
          };
        };
        benchmarks = {
          BenchmarkSATLIB = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.data-default-class
              hsPkgs.toysolver
            ];
          };
          BenchmarkKnapsack = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.toysolver
            ];
          };
          BenchmarkSubsetSum = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.toysolver
              hsPkgs.vector
            ];
          };
        };
      };
    }