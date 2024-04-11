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
      identifier = { name = "ghc-debug-client"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019-2021 Ben Gamari, Matthew Pickering";
      maintainer = "matthewtpickering@gmail.com";
      author = "Ben Gamari, Matthew Pickering, David Eichmann";
      homepage = "https://gitlab.haskell.org/ghc/ghc-debug";
      url = "";
      synopsis = "Useful functions for writing heap analysis tools which use\nghc-debug.";
      description = "Useful functions for writing heap analysis tools which use\nghc-debug.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."ghc-debug-common" or (errorHandler.buildDepError "ghc-debug-common"))
          (hsPkgs."ghc-debug-convention" or (errorHandler.buildDepError "ghc-debug-convention"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."dom-lt" or (errorHandler.buildDepError "dom-lt"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
          (hsPkgs."language-dot" or (errorHandler.buildDepError "language-dot"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
          ];
        buildable = true;
        };
      };
    }