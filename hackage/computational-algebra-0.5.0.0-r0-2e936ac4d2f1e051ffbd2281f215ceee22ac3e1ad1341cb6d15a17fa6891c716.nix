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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "computational-algebra"; version = "0.5.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."algebraic-prelude" or (errorHandler.buildDepError "algebraic-prelude"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."hybrid-vectors" or (errorHandler.buildDepError "hybrid-vectors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
          (hsPkgs."unamb" or (errorHandler.buildDepError "unamb"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
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
          buildable = false;
        };
        "solve" = {
          depends = [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = false;
        };
        "algebraic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."algebraic-prelude" or (errorHandler.buildDepError "algebraic-prelude"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
          ];
          buildable = false;
        };
        "ipsolve" = {
          depends = [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
          buildable = false;
        };
        "faugere-prof" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = false;
        };
        "hensel-prof" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = false;
        };
        "sandpit-poly" = {
          depends = [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
          ];
          buildable = false;
        };
        "quotient" = {
          depends = [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
          buildable = false;
        };
      };
      tests = {
        "test-multi-table" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
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
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          ];
          buildable = false;
        };
        "singular-test" = {
          depends = [
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
          buildable = false;
        };
        "monomial-order-test" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
          ];
          buildable = false;
        };
        "linear-test" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "matrix-test" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          ];
          buildable = false;
        };
        "specs" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "new-div-test" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = false;
        };
      };
      benchmarks = {
        "unipol-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "normal-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "elimination-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = false;
        };
        "quotient-bench-randomized" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          ];
          buildable = true;
        };
        "monomial-order-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = false;
        };
        "linear-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          ];
          buildable = false;
        };
        "division-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          ];
          buildable = false;
        };
        "sugar-paper-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          ];
          buildable = true;
        };
        "solve-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "coercion-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = false;
        };
        "faugere4-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "unipol-mult-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
        "unipol-div-bench" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."sized" or (errorHandler.buildDepError "sized"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."computational-algebra" or (errorHandler.buildDepError "computational-algebra"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
          buildable = true;
        };
      };
    };
  }