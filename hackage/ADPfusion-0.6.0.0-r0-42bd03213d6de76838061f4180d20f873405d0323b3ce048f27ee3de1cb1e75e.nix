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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bits" or (buildDepError "bits"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."DPutils" or (buildDepError "DPutils"))
          (hsPkgs."OrderedBits" or (buildDepError "OrderedBits"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
        buildable = true;
        };
      exes = {
        "NeedlemanWunsch" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."DPutils" or (buildDepError "DPutils"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
          buildable = if flags.examples then true else false;
          };
        "SmithWaterman" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."DPutils" or (buildDepError "DPutils"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
          buildable = if flags.examples then true else false;
          };
        "spectest" = {
          depends = (pkgs.lib).optionals (flags.spectest) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if flags.spectest then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits" or (buildDepError "bits"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."mmorph" or (buildDepError "mmorph"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."DPutils" or (buildDepError "DPutils"))
            (hsPkgs."OrderedBits" or (buildDepError "OrderedBits"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"));
          buildable = true;
          };
        };
      };
    }