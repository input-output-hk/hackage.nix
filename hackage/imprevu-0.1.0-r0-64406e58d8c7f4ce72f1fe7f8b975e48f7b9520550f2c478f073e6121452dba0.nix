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
      identifier = { name = "imprevu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Reactive programming language based on a DSL";
      description = "A DSL to express events";
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
          (hsPkgs."time-recurrence" or (errorHandler.buildDepError "time-recurrence"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."shortcut" or (errorHandler.buildDepError "shortcut"))
          (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Imprevu" or (errorHandler.buildDepError "Imprevu"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }