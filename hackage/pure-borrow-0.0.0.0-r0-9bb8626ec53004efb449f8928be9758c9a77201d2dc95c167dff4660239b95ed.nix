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
    flags = { artifact = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "pure-borrow"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2025-present, Yusuke Matsushita and Hiromi Ishii";
      maintainer = "ysk.m24t@gmail.com\nkonn.jinro@gmail.com";
      author = "Yusuke Matsushita and Hiromi Ishii";
      homepage = "https://github.com/SoftwareFoundationGroupAtKyotoU/pure-borrow";
      url = "";
      synopsis = "Rust-style borrowing in Linear Haskell with purity";
      description = "This package realizes rust-style borrowing in Linear Haskell with purity and concurrency support.\nSee \"Control.Monad.Borrow.Pure\" for the main API documentation, and see our paper [/Pure Borrowing: Linear Haskell Meets Rust-Style Borrowing/](https://arxiv.org/abs/2604.15290) by Y. Matsushita and H. Ishii for the details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hybrid-vectors" or (errorHandler.buildDepError "hybrid-vectors"))
          (hsPkgs."linear-generics" or (errorHandler.buildDepError "linear-generics"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cabal-gild.components.exes.cabal-gild or (pkgs.pkgsBuildBuild.cabal-gild or (errorHandler.buildToolDepError "cabal-gild:cabal-gild")))
        ];
        buildable = true;
      };
      sublibs = {
        "qsort-bench-suites" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = true;
        };
        "qsort-demo-impl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = true;
        };
      };
      exes = {
        "qsort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pure-borrow".components.sublibs.qsort-demo-impl or (errorHandler.buildDepError "pure-borrow:qsort-demo-impl"))
          ];
          buildable = true;
        };
        "convert-qsort-bench-csv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = true;
        };
        "artifact-runner" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
            (hsPkgs."pure-borrow".components.sublibs.qsort-bench-suites or (errorHandler.buildDepError "pure-borrow:qsort-bench-suites"))
            (hsPkgs."pure-borrow".components.sublibs.qsort-demo-impl or (errorHandler.buildDepError "pure-borrow:qsort-demo-impl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = if flags.artifact then true else false;
        };
      };
      tests = {
        "pure-borrow-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
        "pure-borrow-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."pure-borrow" or (errorHandler.buildDepError "pure-borrow"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.12.3"
            then false
            else true;
        };
      };
      benchmarks = {
        "qsort-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pure-borrow".components.sublibs.qsort-bench-suites or (errorHandler.buildDepError "pure-borrow:qsort-bench-suites"))
          ];
          buildable = true;
        };
      };
    };
  }