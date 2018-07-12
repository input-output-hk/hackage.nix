{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "computational-algebra";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Hiromi ISHII 2017";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/computational-algebra";
        url = "";
        synopsis = "Well-kinded computational algebra library, currently supporting Groebner basis.";
        description = "Dependently-typed computational algebra library for Groebner basis.";
        buildType = "Simple";
      };
      components = {
        "computational-algebra" = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.MonadRandom
            hsPkgs.algebraic-prelude
            hsPkgs.algebra
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.containers
            hsPkgs.convertible
            hsPkgs.constraints
            hsPkgs.deepseq
            hsPkgs.equational-reasoning
            hsPkgs.hashable
            hsPkgs.heaps
            hsPkgs.hmatrix
            hsPkgs.matrix
            hsPkgs.entropy
            hsPkgs.lens
            hsPkgs.monad-loops
            hsPkgs.dlist
            hsPkgs.monomorphic
            hsPkgs.mtl
            hsPkgs.reflection
            hsPkgs.sized
            hsPkgs.tagged
            hsPkgs.hybrid-vectors
            hsPkgs.text
            hsPkgs.type-natural
            hsPkgs.unamb
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.parallel
            hsPkgs.mono-traversable
            hsPkgs.control-monad-loop
            hsPkgs.primes
            hsPkgs.singletons
            hsPkgs.arithmoi
            hsPkgs.ghc-typelits-knownnat
          ];
        };
        exes = {
          "groebner-prof" = {
            depends  = [
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.deepseq
            ];
          };
          "solve" = {
            depends  = [
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.computational-algebra
              hsPkgs.random
              hsPkgs.hmatrix
              hsPkgs.matrix
              hsPkgs.sized
              hsPkgs.vector
              hsPkgs.convertible
              hsPkgs.lens
              hsPkgs.MonadRandom
            ];
          };
          "algebraic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.algebraic-prelude
              hsPkgs.computational-algebra
            ];
          };
          "ipsolve" = {
            depends  = [
              hsPkgs.semigroups
              hsPkgs.parallel
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.equational-reasoning
              hsPkgs.reflection
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.computational-algebra
              hsPkgs.random
              hsPkgs.hmatrix
              hsPkgs.matrix
              hsPkgs.sized
              hsPkgs.vector
              hsPkgs.convertible
              hsPkgs.lens
              hsPkgs.MonadRandom
              hsPkgs.singletons
            ];
          };
          "faugere-prof" = {
            depends  = [
              hsPkgs.criterion
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.computational-algebra
              hsPkgs.random
              hsPkgs.hmatrix
              hsPkgs.matrix
              hsPkgs.sized
              hsPkgs.vector
              hsPkgs.convertible
              hsPkgs.lens
              hsPkgs.deepseq
              hsPkgs.MonadRandom
            ];
          };
          "hensel-prof" = {
            depends  = [
              hsPkgs.criterion
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.computational-algebra
              hsPkgs.random
              hsPkgs.hmatrix
              hsPkgs.matrix
              hsPkgs.sized
              hsPkgs.vector
              hsPkgs.convertible
              hsPkgs.lens
              hsPkgs.deepseq
              hsPkgs.MonadRandom
            ];
          };
          "sandpit-poly" = {
            depends  = [
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.computational-algebra
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.algebra
              hsPkgs.sized
            ];
          };
          "quotient" = {
            depends  = [
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.computational-algebra
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.algebra
              hsPkgs.sized
              hsPkgs.reflection
            ];
          };
        };
        tests = {
          "test-multi-table" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.lazysmallcheck
              hsPkgs.lens
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.sized
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
            ];
          };
          "singular-test" = {
            depends  = [
              hsPkgs.algebra
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.monomorphic
              hsPkgs.smallcheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.quickcheck-instances
              hsPkgs.type-natural
              hsPkgs.sized
              hsPkgs.reflection
              hsPkgs.tagged
              hsPkgs.lens
              hsPkgs.matrix
              hsPkgs.text
              hsPkgs.singletons
            ];
          };
          "monomial-order-test" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.monomorphic
              hsPkgs.smallcheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.sized
            ];
          };
          "linear-test" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.sized
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
          "matrix-test" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.sized
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
              hsPkgs.equational-reasoning
            ];
          };
          "specs" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.sized
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.convertible
              hsPkgs.equational-reasoning
              hsPkgs.process
              hsPkgs.text
              hsPkgs.singletons
              hsPkgs.matrix
            ];
          };
          "new-div-test" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
        };
        benchmarks = {
          "unipol-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.singletons
              hsPkgs.sized
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
            ];
          };
          "normal-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.singletons
              hsPkgs.sized
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
            ];
          };
          "elimination-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.singletons
              hsPkgs.sized
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
            ];
          };
          "quotient-bench-randomized" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.singletons
              hsPkgs.smallcheck
              hsPkgs.sized
              hsPkgs.tagged
              hsPkgs.transformers
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
              hsPkgs.equational-reasoning
              hsPkgs.monomorphic
            ];
          };
          "monomial-order-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.random
              hsPkgs.reflection
              hsPkgs.singletons
              hsPkgs.sized
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.transformers
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.matrix
            ];
          };
          "linear-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.sized
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.matrix
              hsPkgs.monomorphic
            ];
          };
          "division-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.sized
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.matrix
              hsPkgs.monomorphic
            ];
          };
          "sugar-paper-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.equational-reasoning
              hsPkgs.matrix
              hsPkgs.monomorphic
            ];
          };
          "solve-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
          "coercion-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
          "faugere4-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
          "unipol-mult-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
          "unipol-div-bench" = {
            depends  = [
              hsPkgs.constraints
              hsPkgs.HUnit
              hsPkgs.sized
              hsPkgs.QuickCheck
              hsPkgs.algebra
              hsPkgs.base
              hsPkgs.computational-algebra
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.monomorphic
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.quickcheck-instances
              hsPkgs.reflection
              hsPkgs.smallcheck
              hsPkgs.tagged
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.type-natural
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.equational-reasoning
              hsPkgs.matrix
            ];
          };
        };
      };
    }