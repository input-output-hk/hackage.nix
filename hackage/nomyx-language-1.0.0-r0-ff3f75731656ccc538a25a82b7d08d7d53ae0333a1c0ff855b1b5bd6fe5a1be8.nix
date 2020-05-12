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
      specVersion = "1.8";
      identifier = { name = "nomyx-language"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Language to express rules for Nomic";
      description = "A DSL to express rules in a Nomic game. See package Nomyx for a full game implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time-recurrence" or (errorHandler.buildDepError "time-recurrence"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."imprevu" or (errorHandler.buildDepError "imprevu"))
          (hsPkgs."shortcut" or (errorHandler.buildDepError "shortcut"))
          ];
        buildable = true;
        };
      };
    }