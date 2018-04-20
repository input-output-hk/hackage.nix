{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      benchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.6";
        identifier = {
          name = "compdata";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paba@diku.dk";
        author = "Patrick Bahr, Tom Hvitved";
        homepage = "";
        url = "";
        synopsis = "Compositional Data Types";
        description = "Based on Wouter Swierstra's Functional Pearl /Data types à la carte/\n(Journal of Functional Programming, 18(4):423-436, 2008),\nthis package provides a framework for defining recursive\ndata types in a compositional manner. The fundamental idea of\ncompositional data types is to separate the signature of a data type\nfrom the fixed point construction that produces its recursive\nstructure. By allowing to compose and decompose signatures,\n/compositional data types/ enable to combine data types in a flexible\nway. The key point of Wouter Swierstra's original work is to define\nfunctions on /compositional data types/ in a compositional manner as\nwell by leveraging Haskell's type class machinery.\n\nBuilding on that foundation, this library provides additional\nextensions and (run-time) optimisations which makes compositional data types\nusable for practical implementations. In particular, it\nprovides an excellent framework for manipulating and analysing\nabstract syntax trees in a type-safe manner. Thus, it is perfectly\nsuited for programming language implementations, especially, in an environment\nconsisting of a family of tightly interwoven /domain-specific languages/.\n\nIn concrete terms, this package provides the following features:\n\n*  Compositional data types in the style of Wouter Swierstra's\nFunctional Pearl /Data types à la carte/.\n\n*  Modular definition of function on compositional data types through\ncatamorphisms and anamorphisms as well as more structured\nrecursion schemes such as primitive recursion  and co-recursion,\nand course-of-value iteration and co-iteration.\n\n*  Support for monadic computations via monadic variants of all\nrecursion schemes.\n\n*  Support of a succinct programming style over compositional data types\nvia generic programming combinators that allow various forms of\ngeneric transformations and generic queries.\n\n*  Generalisation of compositional data types (terms) to\ncompositional data types \\\"with holes\\\" (contexts). This allows\nflexible reuse of a wide variety of catamorphisms (called\n/term homomorphisms/) as well as an efficient composition of them.\n\n*  Operations on signatures, for example, to add and remove\nannotations of abstract syntax trees. This includes combinators to\npropagate annotations fully automatically through certain\nterm homomorphisms.\n\n*  Optimisation of the implementation of recursion schemes. This\nincludes /short-cut fusion/ style optimisation rules which yield a\nperformance boost of up to factor six.\n\n*  Automatic derivation of instances of all relevant type classes for\nusing compositional data types via /Template Haskell/. This includes\ninstances of 'Prelude.Eq', 'Prelude.Ord' and 'Prelude.Show' that are\nderived via instances for functorial variants of them. Additionally,\nalso /smart constructors/, which allow to easily construct inhabitants\nof compositional data types, are automatically generated.\n\n*  /Mutually recursive data types/. All of the above is also lifted to\nfamilies of mutually recursive data types.\n\nFor examples illustrating the use of compositional data types, consult\n\"Data.Comp\" resp. \"Data.Comp.Multi\" for mutually recursive data types.";
        buildType = "Custom";
      };
      components = {
        compdata = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.derive
            hsPkgs.deepseq
            hsPkgs.th-expand-syns
          ];
        };
        exes = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.derive
              hsPkgs.th-expand-syns
              hsPkgs.deepseq
            ];
          };
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.derive
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.random
              hsPkgs.uniplate
              hsPkgs.th-expand-syns
            ];
          };
        };
      };
    }