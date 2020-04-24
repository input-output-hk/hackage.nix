{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      debugoutput = false;
      debugdump = false;
      dump-core = false;
      examples = false;
      spectest = false;
      devel = false;
      btstruc = false;
      llvm = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "ADPfusion"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2011-2019";
      homepage = "https://github.com/choener/ADPfusion";
      url = "";
      synopsis = "Efficient, high-level dynamic programming.";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nADPfusion combines stream-fusion (using the stream interface provided by the vector\nlibrary) and type-level programming to provide highly efficient dynamic programming\ncombinators.\n\nADPfusion allows writing dynamic programs for single- and multi-tape problems.\nInputs can be sequences, or sets. New input types can be defined, without having to\nrewrite this library thanks to the open-world assumption of ADPfusion.\n\nThe library provides the machinery for Outside and Ensemble algorithms as well.\nEnsemble algorithms combine Inside and Outside calculations.\n\nStarting with version 0.4.1 we support writing multiple context-free grammars\n(interleaved syntactic variables). Such grammars have applications in bioinformatics\nand linguistics.\n\nThe homepage provides a number of tutorial-style examples, with linear and\ncontext-free grammars over sequence and set inputs.\n\nThe formal background for generalized algebraic dynamic programming and ADPfusion is\ndescribed in a number of papers. These can be found on the gADP homepage and in the\nREADME.\n\nNote: The core @ADPfusion@ library only provides machinery for linear language over\nsequences. The add-ons @ADPfusionSubword@, @ADPfusionForest@, and others provide\nspecialized machinery for other types of formal languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
          (hsPkgs."OrderedBits" or ((hsPkgs.pkgs-errors).buildDepError "OrderedBits"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"));
        buildable = true;
        };
      exes = {
        "NeedlemanWunsch" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"));
          buildable = if flags.examples then true else false;
          };
        "SmithWaterman" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"));
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
            (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
            (hsPkgs."OrderedBits" or ((hsPkgs.pkgs-errors).buildDepError "OrderedBits"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"));
          buildable = true;
          };
        };
      };
    }