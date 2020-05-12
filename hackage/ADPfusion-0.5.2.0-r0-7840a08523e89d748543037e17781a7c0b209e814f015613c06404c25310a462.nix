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
      examples = false;
      debug = false;
      spectest = false;
      devel = false;
      btstruc = false;
      };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "ADPfusion"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2011-2016";
      homepage = "https://github.com/choener/ADPfusion";
      url = "";
      synopsis = "Efficient, high-level dynamic programming.";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nADPfusion allows writing dynamic programs for single- and\nmulti-tape problems. Inputs can be sequences, or sets. New\ninput types can be defined, without having to rewrite this\nlibrary thanks to the open-world assumption of ADPfusion.\n\nThe library provides the machinery for Outside and Ensemble\nalgorithms as well. Ensemble algorithms combine Inside and\nOutside calculations.\n\nStarting with version 0.4.1 we support writing multiple\ncontext-free grammars (interleaved syntactic variables). Such\ngrammars have applications in bioinformatics and linguistics.\n\nThe homepage provides a number of tutorial-style examples, with\nlinear and context-free grammars over sequence and set inputs.\n\nThe formal background for generalized algebraic dynamic\nprogrmaming and ADPfusion is described in a number of papers.\nThese can be found on the gADP homepage and in the README.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits" or (errorHandler.buildDepError "bits"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."DPutils" or (errorHandler.buildDepError "DPutils"))
          (hsPkgs."OrderedBits" or (errorHandler.buildDepError "OrderedBits"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "NeedlemanWunsch" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "spectest" = {
          depends = (pkgs.lib).optionals (flags.spectest) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.spectest then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."bits" or (errorHandler.buildDepError "bits"))
            (hsPkgs."OrderedBits" or (errorHandler.buildDepError "OrderedBits"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "TestBacktrackingStructures" = {
          depends = (pkgs.lib).optionals (flags.btstruc) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."fmlist" or (errorHandler.buildDepError "fmlist"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = if flags.btstruc then true else false;
          };
        };
      };
    }