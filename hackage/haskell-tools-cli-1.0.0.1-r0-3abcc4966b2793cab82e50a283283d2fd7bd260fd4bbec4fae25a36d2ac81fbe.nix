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
      identifier = { name = "haskell-tools-cli"; version = "1.0.0.1"; };
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
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."haskell-tools-refactor" or (errorHandler.buildDepError "haskell-tools-refactor"))
          (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
          (hsPkgs."haskell-tools-daemon" or (errorHandler.buildDepError "haskell-tools-daemon"))
          ];
        buildable = true;
        };
      exes = {
        "ht-refact" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."haskell-tools-cli" or (errorHandler.buildDepError "haskell-tools-cli"))
            (hsPkgs."haskell-tools-daemon" or (errorHandler.buildDepError "haskell-tools-daemon"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            ];
          buildable = true;
          };
        "ht-test-stackage" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-tools-cli-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."knob" or (errorHandler.buildDepError "knob"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell-tools-cli" or (errorHandler.buildDepError "haskell-tools-cli"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "cli-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."knob" or (errorHandler.buildDepError "knob"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."haskell-tools-cli" or (errorHandler.buildDepError "haskell-tools-cli"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (errorHandler.buildDepError "haskell-tools-builtin-refactorings"))
            (hsPkgs."haskell-tools-daemon" or (errorHandler.buildDepError "haskell-tools-daemon"))
            ];
          buildable = true;
          };
        };
      };
    }