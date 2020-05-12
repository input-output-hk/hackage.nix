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
      identifier = { name = "loops"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Thomas Tuegel 2014";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Fast imperative-style loops";
      description = "@loops@ is a library for fast, imperative-style loops with a clean syntax.\n\nFeatures\n\n* Fast, imperative-style loops with a clean syntax. Bind (`>>=`) nests loops,\nso in `do`-notation, each subsequent line is nested inside loops that appear\nabove it.\n\n* Iteration over common data structures, like lists and vectors.\n\n* Robust performance because there is no reliance on fusion.\n\n* NEW! Loop-unrolling to arbitrary depth. Unrollable loop combinators are\nprovided in `Control.Monad.Loop.Unroll`. (The simple, \"rolled\" interface is\nstill provided in `Control.Monad.Loop`.) The unrolling depth set at the call\nsite at compile time. My benchmarks show that folding over unrolled loops is\nup to 25% faster than folding over unboxed vectors!\n\nFor best performance, please compile your code with @-O2@. You should also\nuse GHC's LLVM backend if possible; it generally produces faster executables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."loops" or (errorHandler.buildDepError "loops"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."loops" or (errorHandler.buildDepError "loops"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }