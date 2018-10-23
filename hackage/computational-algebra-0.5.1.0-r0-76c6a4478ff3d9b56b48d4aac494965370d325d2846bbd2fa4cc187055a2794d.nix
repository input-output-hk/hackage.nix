{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      examples = false;
      profile = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "computational-algebra";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://konn.github.com/computational-algebra";
      url = "";
      synopsis = "Well-kinded computational algebra library, currently supporting Groebner basis.";
      description = "Dependently-typed computational algebra library for Groebner basis.";
      buildType = "Simple";
    };
    components = {
      "computational-algebra" = {
        depends  = [
          (hsPkgs.ListLike)
          (hsPkgs.MonadRandom)
          (hsPkgs.algebra)
          (hsPkgs.algebraic-prelude)
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.control-monad-loop)
          (hsPkgs.convertible)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.entropy)
          (hsPkgs.equational-reasoning)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.ghc-typelits-presburger)
          (hsPkgs.hashable)
          (hsPkgs.heaps)
          (hsPkgs.hmatrix)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.integer-logarithms)
          (hsPkgs.lens)
          (hsPkgs.matrix)
          (hsPkgs.monad-loops)
          (hsPkgs.mono-traversable)
          (hsPkgs.monomorphic)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.primes)
          (hsPkgs.reflection)
          (hsPkgs.semigroups)
          (hsPkgs.singletons)
          (hsPkgs.sized)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.type-natural)
          (hsPkgs.unamb)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      exes = {
        "groebner-prof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.deepseq)
          ];
        };
        "solve" = {
          depends  = [
            (hsPkgs.MonadRandom)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.type-natural)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.convertible)
            (hsPkgs.hmatrix)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.sized)
            (hsPkgs.vector)
          ];
        };
        "algebraic" = {
          depends  = [
            (hsPkgs.algebraic-prelude)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
          ];
        };
        "ipsolve" = {
          depends  = [
            (hsPkgs.MonadRandom)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.convertible)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hmatrix)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.parallel)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.semigroups)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "hensel-prof" = {
          depends  = [
            (hsPkgs.MonadRandom)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.convertible)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hmatrix)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "sandpit-poly" = {
          depends  = [
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.semigroups)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
          ];
        };
        "quotient" = {
          depends  = [
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.reflection)
            (hsPkgs.semigroups)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
          ];
        };
      };
      tests = {
        "test-multi-table" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lazysmallcheck)
            (hsPkgs.lens)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "singular-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "monomial-order-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.monomorphic)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.vector)
          ];
        };
        "linear-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "matrix-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "specs" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "new-div-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "unipol-bench" = {
          depends  = [
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.matrix)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "normal-bench" = {
          depends  = [
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.matrix)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "elimination-bench" = {
          depends  = [
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.matrix)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "quotient-bench-randomized" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.transformers)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
            (hsPkgs.constraints)
          ];
        };
        "monomial-order-bench" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraint)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.singletons)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.transformers)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "linear-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "division-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "sugar-paper-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "solve-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "coercion-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "unipol-mult-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
          ];
        };
        "unipol-div-bench" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.algebra)
            (hsPkgs.base)
            (hsPkgs.computational-algebra)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.equational-reasoning)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.matrix)
            (hsPkgs.monomorphic)
            (hsPkgs.parallel)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.sized)
            (hsPkgs.smallcheck)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
            (hsPkgs.constraints)
          ];
        };
      };
    };
  }