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
      identifier = { name = "haskell-tools-cli"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Command-line frontend for Haskell-tools Refact";
      description = "Command-line frontend for Haskell-tools Refact. Not meant as a final product, only for demonstration purposes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-prettyprint" or (errorHandler.buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
          ];
        buildable = true;
        };
      exes = {
        "ht-refact" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-tools-cli" or (errorHandler.buildDepError "haskell-tools-cli"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-tools-cli-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-tools-cli" or (errorHandler.buildDepError "haskell-tools-cli"))
            ];
          buildable = true;
          };
        };
      };
    }