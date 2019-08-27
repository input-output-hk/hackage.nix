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
    flags = {
      forcechar8 = false;
      linuxstatic = false;
      buildtoyfmf = false;
      buildsampleprograms = false;
      buildmiscprograms = false;
      exceptions06 = true;
      time15 = true;
      transformers051 = true;
      usehaskeline = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "toysolver"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Assorted decision procedures for SAT, Max-SAT, PB, MIP, etc";
      description = "Toy-level implementation of some decision procedures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
          (hsPkgs."queue" or (buildDepError "queue"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."multiset" or (buildDepError "multiset"))
          (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
          (hsPkgs."type-level-numbers" or (buildDepError "type-level-numbers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."intern" or (buildDepError "intern"))
          (hsPkgs."loop" or (buildDepError "loop"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."OptDir" or (buildDepError "OptDir"))
          (hsPkgs."extended-reals" or (buildDepError "extended-reals"))
          (hsPkgs."data-interval" or (buildDepError "data-interval"))
          (hsPkgs."finite-field" or (buildDepError "finite-field"))
          (hsPkgs."sign" or (buildDepError "sign"))
          (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
          ] ++ [
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.7") (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))) ++ [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      exes = {
        "toysolver" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."OptDir" or (buildDepError "OptDir"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "toysat" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ] ++ (if flags.time15
            then [ (hsPkgs."time" or (buildDepError "time")) ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ])) ++ (pkgs.lib).optional (flags.forcechar8 && (compiler.isGhc && true)) (hsPkgs."base" or (buildDepError "base"));
          };
        "toysmt" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ] ++ (pkgs.lib).optional (flags.usehaskeline) (hsPkgs."haskeline" or (buildDepError "haskeline"))) ++ (pkgs.lib).optional (flags.forcechar8 && (compiler.isGhc && true)) (hsPkgs."base" or (buildDepError "base"));
          };
        "toyfmf" = {
          depends = (pkgs.lib).optionals (flags.buildtoyfmf) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."logic-TPTP" or (buildDepError "logic-TPTP"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.9" && flags.transformers051) (hsPkgs."logic-TPTP" or (buildDepError "logic-TPTP")));
          };
        "lpconvert" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "pbconvert" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "sudoku" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "nonogram" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "nqueens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "knapsack" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "htc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "svm2lp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "pigeonhole" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "maxsatverify" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        "pbverify" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pseudo-boolean" or (buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            ];
          };
        };
      tests = {
        "TestPolynomial" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."data-interval" or (buildDepError "data-interval"))
            (hsPkgs."finite-field" or (buildDepError "finite-field"))
            (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
            ];
          };
        "TestSuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."data-interval" or (buildDepError "data-interval"))
            (hsPkgs."OptDir" or (buildDepError "OptDir"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      benchmarks = {
        "BenchmarkSATLIB" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        "BenchmarkKnapsack" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        "BenchmarkSubsetSum" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."toysolver" or (buildDepError "toysolver"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }