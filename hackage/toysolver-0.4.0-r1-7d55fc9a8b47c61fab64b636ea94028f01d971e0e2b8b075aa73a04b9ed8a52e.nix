{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
          (hsPkgs."queue" or ((hsPkgs.pkgs-errors).buildDepError "queue"))
          (hsPkgs."heaps" or ((hsPkgs.pkgs-errors).buildDepError "heaps"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."type-level-numbers" or ((hsPkgs.pkgs-errors).buildDepError "type-level-numbers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
          (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
          (hsPkgs."extended-reals" or ((hsPkgs.pkgs-errors).buildDepError "extended-reals"))
          (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
          (hsPkgs."finite-field" or ((hsPkgs.pkgs-errors).buildDepError "finite-field"))
          (hsPkgs."sign" or ((hsPkgs.pkgs-errors).buildDepError "sign"))
          (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
          ] ++ [
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.7") (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))) ++ [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      exes = {
        "toysolver" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "toysat" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."unbounded-delays" or ((hsPkgs.pkgs-errors).buildDepError "unbounded-delays"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ] ++ (if flags.time15
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ])) ++ (pkgs.lib).optional (flags.forcechar8 && (compiler.isGhc && true)) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
          buildable = true;
          };
        "toysmt" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ] ++ (pkgs.lib).optional (flags.usehaskeline) (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))) ++ (pkgs.lib).optional (flags.forcechar8 && (compiler.isGhc && true)) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
          buildable = true;
          };
        "toyfmf" = {
          depends = (pkgs.lib).optionals (flags.buildtoyfmf) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.9" && flags.transformers051) (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP")));
          buildable = if !flags.buildtoyfmf then false else true;
          };
        "lpconvert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "pbconvert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "sudoku" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "nonogram" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "nqueens" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "knapsack" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "htc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "svm2lp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "pigeonhole" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildmiscprograms then false else true;
          };
        "maxsatverify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildmiscprograms then false else true;
          };
        "pbverify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildmiscprograms then false else true;
          };
        };
      tests = {
        "TestPolynomial" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
            (hsPkgs."finite-field" or ((hsPkgs.pkgs-errors).buildDepError "finite-field"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            ];
          buildable = true;
          };
        "TestSuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
            (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "BenchmarkSATLIB" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "BenchmarkKnapsack" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "BenchmarkSubsetSum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }