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
    flags = { examples = false; profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "computational-algebra"; version = "0.5.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          (hsPkgs."algebraic-prelude" or (errorHandler.buildDepError "algebraic-prelude"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-presburger" or (errorHandler.buildDepError "ghc-typelits-presburger"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hybrid-vectors" or (errorHandler.buildDepError "hybrid-vectors"))
          (hsPkgs."hybrid-vectors" or (errorHandler.buildDepError "hybrid-vectors"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
          (hsPkgs."unamb" or (errorHandler.buildDepError "unamb"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "groebner-prof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = if flags.profile then true else false;
          };
        "solve" = {
          depends = [
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "algebraic" = {
          depends = [
            (hsPkgs."algebraic-prelude" or (errorHandler.buildDepError "algebraic-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "ipsolve" = {
          depends = [
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "hensel-prof" = {
          depends = [
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.profile then true else false;
          };
        "sandpit-poly" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "quotient" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "test-multi-table" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lazysmallcheck" or (errorHandler.buildDepError "lazysmallcheck"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "singular-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "monomial-order-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "linear-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "matrix-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "specs" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "new-div-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        };
      benchmarks = {
        "unipol-bench" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "normal-bench" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "elimination-bench" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "quotient-bench-randomized" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            ];
          buildable = true;
          };
        "monomial-order-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraint" or (errorHandler.buildDepError "constraint"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "linear-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "division-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "sugar-paper-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "solve-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "coercion-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        "unipol-mult-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "unipol-div-bench" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            ];
          buildable = true;
          };
        };
      };
    }