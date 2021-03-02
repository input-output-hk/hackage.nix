{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compdata"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@diku.dk";
      author = "Patrick Bahr, Tom Hvitved";
      homepage = "";
      url = "";
      synopsis = "Compositional Data Types";
      description = "This library implements the ideas of /Data types a la carte/\n(Journal of Functional Programming, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>) as outlined in the\npaper /Compositional data types/ (Workshop on Generic Programming,\n83-94, 2011, <http://dx.doi.org/10.1145/2036918.2036930>). The\npurpose of this library is to allow the programmer to construct data\ntypes -- as well as the functions defined on them -- in a modular\nfashion. The underlying idea is to separate the signature of a data\ntype from the fixed point construction that produces its recursive\nstructure. Signatures can then be composed and decomposed freely.\n\nBuilding on that foundation, this library provides additional\nextensions and (run-time) optimisations which make compositional data types\nusable for practical implementations. In particular, it\nprovides an excellent framework for manipulating and analysing\nabstract syntax trees in a type-safe manner. Thus, it is perfectly\nsuited for programming language implementations, especially, in an environment\nconsisting of a family of tightly interwoven /domain-specific languages/.\n\nIn concrete terms, this library provides the following features:\n\n*  Compositional data types in the style of Wouter Swierstra's\nFunctional Pearl /Data types a la carte/. The implementation of\nsignature subsumption is based on the paper\n/Composing and Decomposing Data Types/ (Workshop on Generic\nProgramming, 2014, to appear), which makes signature composition more\nflexible.\n\n*  Modular definition of functions on compositional data types through\ncatamorphisms and anamorphisms as well as more structured\nrecursion schemes such as primitive recursion  and co-recursion,\nand course-of-value iteration and co-iteration.\n\n*  Support for monadic computations via monadic variants of all\nrecursion schemes.\n\n*  Support of a succinct programming style over compositional data types\nvia generic programming combinators that allow various forms of\ngeneric transformations and generic queries.\n\n*  Generalisation of compositional data types (terms) to\ncompositional data types \\\"with holes\\\" (contexts). This allows\nflexible reuse of a wide variety of catamorphisms (called\n/term homomorphisms/) as well as an efficient composition of them.\n\n*  Operations on signatures, for example, to add and remove\nannotations of abstract syntax trees. This includes combinators to\npropagate annotations fully automatically through certain\nterm homomorphisms.\n\n*  Optimisation of the implementation of recursion schemes. This\nincludes /short-cut fusion/ style optimisation rules which yield a\nperformance boost of up to factor six.\n\n*  Automatic derivation of instances of all relevant type classes for\nusing compositional data types via /Template Haskell/. This includes\ninstances of 'Prelude.Eq', 'Prelude.Ord' and 'Prelude.Show' that are\nderived via instances for functorial variants of them. Additionally,\nalso /smart constructors/, which allow to easily construct inhabitants\nof compositional data types, are automatically generated.\n\n*  /Mutually recursive data types/ and\n/generalised algebraic data types (GADTs)/. All of the above is also lifted\nto families of mutually recursive data types and (more generally) GADTs.\nThis extension resides in the module \"Data.Comp.Multi\".\n\nExamples of using (generalised) compositional data types are bundled\nwith the package in the folder @examples@.\n\nThere are some supplementary packages, some of which were included\nin previous versions of this package:\n\n* @compdata-param@\n<https://hackage.haskell.org/package/compdata-param>: a parametric\nvariant of compositional data types to deal with variable binders\nin a systematic way.\n\n* @compdata-automata@\n<https://hackage.haskell.org/package/compdata-automata>: advanced\nrecursion schemes derived from tree automata that allow for a\nhigher degree of modularity and make it possible to apply fusion.\n\n* @compdata-dags@\n<https://hackage.haskell.org/package/compdata-dags>: recursion\nschemes on directed acyclic graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "algebra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }