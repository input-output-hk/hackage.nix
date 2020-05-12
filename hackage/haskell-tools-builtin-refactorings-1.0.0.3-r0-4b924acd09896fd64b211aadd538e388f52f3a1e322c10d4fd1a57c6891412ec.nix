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
      identifier = {
        name = "haskell-tools-builtin-refactorings";
        version = "1.0.0.3";
        };
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
          (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-tools-builtin-refactorings-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."references" or (errorHandler.buildDepError "references"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
            (hsPkgs."haskell-tools-backend-ghc" or (errorHandler.buildDepError "haskell-tools-backend-ghc"))
            (hsPkgs."haskell-tools-rewrite" or (errorHandler.buildDepError "haskell-tools-rewrite"))
            (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
            (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "ht-extension-organizer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."references" or (errorHandler.buildDepError "references"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
            (hsPkgs."haskell-tools-backend-ghc" or (errorHandler.buildDepError "haskell-tools-backend-ghc"))
            (hsPkgs."haskell-tools-rewrite" or (errorHandler.buildDepError "haskell-tools-rewrite"))
            (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
            (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            ];
          buildable = true;
          };
        };
      };
    }