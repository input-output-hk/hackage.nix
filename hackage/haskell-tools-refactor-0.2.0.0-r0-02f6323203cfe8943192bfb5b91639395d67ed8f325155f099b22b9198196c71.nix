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
      identifier = { name = "haskell-tools-refactor"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Refactoring Tool for Haskell";
      description = "Contains a set of refactorings based on the Haskell-Tools framework to easily transform a Haskell program. For the descriptions of the implemented refactorings, see the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-ast-fromghc" or (errorHandler.buildDepError "haskell-tools-ast-fromghc"))
          (hsPkgs."haskell-tools-ast-gen" or (errorHandler.buildDepError "haskell-tools-ast-gen"))
          (hsPkgs."haskell-tools-ast-trf" or (errorHandler.buildDepError "haskell-tools-ast-trf"))
          (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-tools-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
            (hsPkgs."haskell-tools-ast-fromghc" or (errorHandler.buildDepError "haskell-tools-ast-fromghc"))
            (hsPkgs."haskell-tools-ast-gen" or (errorHandler.buildDepError "haskell-tools-ast-gen"))
            (hsPkgs."haskell-tools-ast-trf" or (errorHandler.buildDepError "haskell-tools-ast-trf"))
            (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
            (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."references" or (errorHandler.buildDepError "references"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
            ];
          buildable = true;
          };
        };
      };
    }