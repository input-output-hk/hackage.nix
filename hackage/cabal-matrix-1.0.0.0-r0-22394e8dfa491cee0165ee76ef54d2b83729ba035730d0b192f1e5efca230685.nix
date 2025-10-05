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
      specVersion = "3.0";
      identifier = { name = "cabal-matrix"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mniip";
      author = "mniip";
      homepage = "https://github.com/mniip/cabal-matrix";
      url = "";
      synopsis = "Matrix builds for cabal";
      description = "@cabal-matrix@ is a matrix builder for cabal. It lets you specify in a\nflexible way a list of configurations in which something can be built, such as\ncompiler versions, or dependency version restrictions. It will then run the\nbuilds in parallel (locally), and present the results in a TUI table where the\nspecific outcomes can be more closely examined. This is useful for inventing\nand correcting dependency bounds for your package, as well as finding\ndependency issues in other packages and fixing them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
          (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
          (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-matrix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-matrix" or (errorHandler.buildDepError "cabal-matrix"))
          ];
          buildable = true;
        };
      };
    };
  }