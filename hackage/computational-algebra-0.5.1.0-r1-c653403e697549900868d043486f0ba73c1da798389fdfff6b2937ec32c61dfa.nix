let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."algebra" or (buildDepError "algebra"))
          (hsPkgs."algebraic-prelude" or (buildDepError "algebraic-prelude"))
          (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-presburger" or (buildDepError "ghc-typelits-presburger"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."hybrid-vectors" or (buildDepError "hybrid-vectors"))
          (hsPkgs."hybrid-vectors" or (buildDepError "hybrid-vectors"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."sized" or (buildDepError "sized"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."type-natural" or (buildDepError "type-natural"))
          (hsPkgs."unamb" or (buildDepError "unamb"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          ];
        };
      exes = {
        "groebner-prof" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "solve" = {
          depends = [
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "algebraic" = {
          depends = [
            (hsPkgs."algebraic-prelude" or (buildDepError "algebraic-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            ];
          };
        "ipsolve" = {
          depends = [
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "hensel-prof" = {
          depends = [
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "sandpit-poly" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            ];
          };
        "quotient" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            ];
          };
        };
      tests = {
        "test-multi-table" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "singular-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "monomial-order-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "linear-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "matrix-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "specs" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "new-div-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "unipol-bench" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "normal-bench" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "elimination-bench" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "quotient-bench-randomized" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            ];
          };
        "monomial-order-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraint" or (buildDepError "constraint"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "linear-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "division-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "sugar-paper-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "solve-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "coercion-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "unipol-mult-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "unipol-div-bench" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            ];
          };
        };
      };
    }