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
      identifier = { name = "haskell-tools-refactor"; version = "1.0.0.0"; };
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
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-backend-ghc" or (errorHandler.buildDepError "haskell-tools-backend-ghc"))
          (hsPkgs."haskell-tools-rewrite" or (errorHandler.buildDepError "haskell-tools-rewrite"))
          (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
          ];
        buildable = true;
        };
      };
    }