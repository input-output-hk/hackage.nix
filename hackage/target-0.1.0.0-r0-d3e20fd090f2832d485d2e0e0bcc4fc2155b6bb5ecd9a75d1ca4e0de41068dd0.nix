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
      identifier = { name = "target"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "eseidel@cs.ucsd.edu";
      author = "Eric Seidel";
      homepage = "";
      url = "";
      synopsis = "Generate test-suites from refinement types.";
      description = "Target is a library for testing Haskell functions based on\nproperties encoded as refinement types.\n\nThe programmer specifies the expected behavior of a\nfunction with a refinement type, and Target then checks\nthat the function satisfies the specification by\nenumerating valid inputs up to some size, calling the\nfunction, and validating the output. Target excels when the\nspace of valid inputs is a sparse subset of all possible\ninputs, e.g. when dealing with dataypes with complex\ninvariants like red-black trees.\n\n\"Test.Target\" is the main entry point and should contain\neverything you need to use Target with types from the\n\"Prelude\". \"Test.Target.Targetable\" will also be useful if\nyou want to test functions that use other types.\n\nFor information on how to /specify/ interesting properties\nwith refinement types, we have a series of\n<http://goto.ucsd.edu/~rjhala/liquid/haskell/blog/blog/categories/basic/ blog posts>\nas well as an\n<http://github.com/ucsd-progsys/liquidhaskell/tree/master/docs/tutorial evolving tutorial>.\nTarget uses the same specification language as LiquidHaskell,\nso the examples should carry over.\n\nFinally, Target requires either <https://z3.codeplex.com/ Z3>\n(@>=4.3@) or <http://cvc4.cs.nyu.edu/web/ CVC4> (@>=1.4@) to\nbe present in your @PATH@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."target" or (errorHandler.buildDepError "target"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."data-timeout" or (errorHandler.buildDepError "data-timeout"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."target" or (errorHandler.buildDepError "target"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }