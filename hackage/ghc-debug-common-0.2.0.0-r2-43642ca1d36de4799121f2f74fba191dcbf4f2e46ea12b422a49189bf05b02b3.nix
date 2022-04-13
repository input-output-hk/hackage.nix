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
      identifier = { name = "ghc-debug-common"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Ben Gamari, Matthew Pickering";
      maintainer = "matthewtpickering@gmail.com";
      author = "Ben Gamari, Matthew Pickering";
      homepage = "https://gitlab.haskell.org/ghc/ghc-debug";
      url = "";
      synopsis = "Connect to a socket created by ghc-debug-stub and analyse\nthe heap of the debuggee program.";
      description = "Connect to a socket created by ghc-debug-stub and analyse\nthe heap of the debuggee program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."dom-lt" or (errorHandler.buildDepError "dom-lt"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."ghc-debug-convention" or (errorHandler.buildDepError "ghc-debug-convention"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }