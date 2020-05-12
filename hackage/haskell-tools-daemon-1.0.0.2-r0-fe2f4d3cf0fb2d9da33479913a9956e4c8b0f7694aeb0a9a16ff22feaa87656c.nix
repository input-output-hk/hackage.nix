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
      identifier = { name = "haskell-tools-daemon"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Background process for Haskell-tools that editors can connect to.";
      description = "Background process for Haskell-tools that provides a way to use the tools on a\nwhole project. It also makes it possible to use the tools on the project in a\nsession, reloading modules when needed. The daemon library is independent of\nthe actual set of tools, and takes them as a parameter, so the system can be\neasily extended by creating a simple new Main module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
          (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
          (hsPkgs."fswatch" or (errorHandler.buildDepError "fswatch"))
          ];
        buildable = true;
        };
      exes = {
        "ht-daemon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-tools-daemon" or (errorHandler.buildDepError "haskell-tools-daemon"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-tools-daemon-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."haskell-tools-daemon" or (errorHandler.buildDepError "haskell-tools-daemon"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            ];
          buildable = true;
          };
        };
      };
    }