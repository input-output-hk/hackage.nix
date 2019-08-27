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
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."algebraic-prelude" or (buildDepError "algebraic-prelude"))
          (hsPkgs."algebra" or (buildDepError "algebra"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."sized" or (buildDepError "sized"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."hybrid-vectors" or (buildDepError "hybrid-vectors"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."type-natural" or (buildDepError "type-natural"))
          (hsPkgs."unamb" or (buildDepError "unamb"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
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
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "algebraic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."algebraic-prelude" or (buildDepError "algebraic-prelude"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            ];
          };
        "ipsolve" = {
          depends = [
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            ];
          };
        "faugere-prof" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "hensel-prof" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "sandpit-poly" = {
          depends = [
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."sized" or (buildDepError "sized"))
            ];
          };
        "quotient" = {
          depends = [
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            ];
          };
        };
      tests = {
        "test-multi-table" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
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
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            ];
          };
        "singular-test" = {
          depends = [
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            ];
          };
        "monomial-order-test" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."sized" or (buildDepError "sized"))
            ];
          };
        "linear-test" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
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
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "matrix-test" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
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
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            ];
          };
        "specs" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
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
            (hsPkgs."convertible" or (buildDepError "convertible"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "new-div-test" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        };
      benchmarks = {
        "unipol-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "normal-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "elimination-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "quotient-bench-randomized" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            ];
          };
        "monomial-order-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
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
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "linear-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            ];
          };
        "division-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            ];
          };
        "sugar-paper-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            ];
          };
        "solve-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "coercion-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "faugere4-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "unipol-mult-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        "unipol-div-bench" = {
          depends = [
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."sized" or (buildDepError "sized"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."computational-algebra" or (buildDepError "computational-algebra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monomorphic" or (buildDepError "monomorphic"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-natural" or (buildDepError "type-natural"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."equational-reasoning" or (buildDepError "equational-reasoning"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            ];
          };
        };
      };
    }