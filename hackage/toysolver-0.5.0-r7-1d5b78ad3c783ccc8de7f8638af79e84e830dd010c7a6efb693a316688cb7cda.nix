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
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extended-reals" or (errorHandler.buildDepError "extended-reals"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."OptDir" or (errorHandler.buildDepError "OptDir"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
          (hsPkgs."queue" or (errorHandler.buildDepError "queue"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."sign" or (errorHandler.buildDepError "sign"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ] ++ pkgs.lib.optional (flags.opencl) (hsPkgs."OpenCL" or (errorHandler.buildDepError "OpenCL"))) ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      exes = {
        "toysolver" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."OptDir" or (errorHandler.buildDepError "OptDir"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "toysat" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "toysmt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ] ++ pkgs.lib.optional (flags.usehaskeline) (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"));
          buildable = true;
        };
        "toyqbf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "toyfmf" = {
          depends = pkgs.lib.optionals (flags.buildtoyfmf) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
            (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.9") (if flags.logictptp045
            then [
              (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            ]
            else [
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]));
          buildable = if !flags.buildtoyfmf then false else true;
        };
        "toyconvert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "sudoku" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "nonogram" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "nqueens" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "numberlink" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "knapsack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "assign" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "shortest-path" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "htc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "svm2lp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "survey-propagation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ] ++ pkgs.lib.optional (flags.opencl) (hsPkgs."OpenCL" or (errorHandler.buildDepError "OpenCL"));
          buildable = if !flags.buildsampleprograms then false else true;
        };
        "pigeonhole" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildmiscprograms then false else true;
        };
        "maxsatverify" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildmiscprograms then false else true;
        };
        "pbverify" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = if !flags.buildmiscprograms then false else true;
        };
      };
      tests = {
        "TestPolynomial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
            (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "TestSuite" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."OptDir" or (errorHandler.buildDepError "OptDir"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pseudo-boolean" or (errorHandler.buildDepError "pseudo-boolean"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "BenchmarkSATLIB" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "BenchmarkKnapsack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
          buildable = true;
        };
        "BenchmarkSubsetSum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }