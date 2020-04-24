{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
          (hsPkgs."OrderedBits" or ((hsPkgs.pkgs-errors).buildDepError "OrderedBits"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "NeedlemanWunsch" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        "spectest" = {
          depends = (pkgs.lib).optionals (flags.spectest) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.spectest then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
            (hsPkgs."OrderedBits" or ((hsPkgs.pkgs-errors).buildDepError "OrderedBits"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "TestBacktrackingStructures" = {
          depends = (pkgs.lib).optionals (flags.btstruc) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."fmlist" or ((hsPkgs.pkgs-errors).buildDepError "fmlist"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = if flags.btstruc then true else false;
          };
        };
      };
    }