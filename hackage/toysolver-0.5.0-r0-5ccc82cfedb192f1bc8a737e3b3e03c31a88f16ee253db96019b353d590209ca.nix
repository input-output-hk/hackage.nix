{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      forcechar8 = false;
      linuxstatic = false;
      buildtoyfmf = false;
      buildsampleprograms = false;
      buildmiscprograms = false;
      logictptp045 = true;
      usehaskeline = true;
      opencl = false;
      testcbc = false;
      testcplex = false;
      testglpsol = false;
      testgurobicl = false;
      testlpsolve = false;
      testscip = false;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "toysolver"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/toysolver/";
      url = "";
      synopsis = "Assorted decision procedures for SAT, SMT, Max-SAT, PB, MIP, etc";
      description = "Toy-level implementation of some decision procedures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."extended-reals" or ((hsPkgs.pkgs-errors).buildDepError "extended-reals"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."finite-field" or ((hsPkgs.pkgs-errors).buildDepError "finite-field"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."heaps" or ((hsPkgs.pkgs-errors).buildDepError "heaps"))
          (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
          (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
          (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
          (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
          (hsPkgs."queue" or ((hsPkgs.pkgs-errors).buildDepError "queue"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."sign" or ((hsPkgs.pkgs-errors).buildDepError "sign"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          ] ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."OpenCL" or ((hsPkgs.pkgs-errors).buildDepError "OpenCL"))) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      exes = {
        "toysolver" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "toysat" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."unbounded-delays" or ((hsPkgs.pkgs-errors).buildDepError "unbounded-delays"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "toysmt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ] ++ (pkgs.lib).optional (flags.usehaskeline) (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"));
          buildable = true;
          };
        "toyqbf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "toyfmf" = {
          depends = (pkgs.lib).optionals (flags.buildtoyfmf) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.9") (if flags.logictptp045
            then [
              (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
              ]
            else [
              (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
              ]));
          buildable = if !flags.buildtoyfmf then false else true;
          };
        "toyconvert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "sudoku" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "nonogram" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "nqueens" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "numberlink" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
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
        "assign" = {
          depends = [
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "shortest-path" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
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
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        "survey-propagation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ] ++ (pkgs.lib).optional (flags.opencl) (hsPkgs."OpenCL" or ((hsPkgs.pkgs-errors).buildDepError "OpenCL"));
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
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = if !flags.buildmiscprograms then false else true;
          };
        "pbverify" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
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
            (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
            (hsPkgs."finite-field" or ((hsPkgs.pkgs-errors).buildDepError "finite-field"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "TestSuite" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
            (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."OptDir" or ((hsPkgs.pkgs-errors).buildDepError "OptDir"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pseudo-boolean" or ((hsPkgs.pkgs-errors).buildDepError "pseudo-boolean"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "BenchmarkSATLIB" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "BenchmarkKnapsack" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            ];
          buildable = true;
          };
        "BenchmarkSubsetSum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }