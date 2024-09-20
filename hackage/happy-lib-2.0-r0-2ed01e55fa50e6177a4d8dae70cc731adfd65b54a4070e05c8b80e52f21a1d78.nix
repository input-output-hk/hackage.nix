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
      identifier = { name = "happy-lib"; version = "2.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) Andy Gill, Simon Marlow";
      maintainer = "https://github.com/haskell/happy";
      author = "Andy Gill and Simon Marlow";
      homepage = "https://www.haskell.org/happy/";
      url = "";
      synopsis = "Happy is a parser generator for Haskell implemented using this library";
      description = "Happy is a parser generator for Haskell.  Given a grammar\nspecification in BNF, Happy generates Haskell code to parse the\ngrammar.  Happy works in a similar way to the @yacc@ tool for C.\n\nThis library provides the following functionality:\n\n  * Data type definitions for the Grammar AST type, capturing the information in .y-files (Happy.Grammar)\n\n  * A parser for happy grammar files (.y) to produce a Grammar (Happy.Frontend.*)\n\n  * Implementations of the text book algorithms that compute the LR action and\n    goto tables for the given 'Grammar' (Happy.Tabular.*)\n\n  * An LALR code generator to produce table-driven, deterministic parsing code\n    in Haskell (Happy.Backend.LALR.*)\n\n  * A (less maintained) GLR code generator to produce table-driven,\n    non-deterministic parsing code in Haskell, where ambiguous parses produce\n    multiple parse trees (Happy.Backend.GLR.*)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."happy-lib".components.sublibs.grammar or (errorHandler.buildDepError "happy-lib:grammar"))
          (hsPkgs."happy-lib".components.sublibs.tabular or (errorHandler.buildDepError "happy-lib:tabular"))
          (hsPkgs."happy-lib".components.sublibs.frontend or (errorHandler.buildDepError "happy-lib:frontend"))
          (hsPkgs."happy-lib".components.sublibs.backend-lalr or (errorHandler.buildDepError "happy-lib:backend-lalr"))
          (hsPkgs."happy-lib".components.sublibs.backend-glr or (errorHandler.buildDepError "happy-lib:backend-glr"))
        ];
        buildable = true;
      };
      sublibs = {
        "grammar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
        "frontend" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."happy-lib".components.sublibs.grammar or (errorHandler.buildDepError "happy-lib:grammar"))
          ];
          buildable = true;
        };
        "tabular" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."happy-lib".components.sublibs.grammar or (errorHandler.buildDepError "happy-lib:grammar"))
          ];
          buildable = true;
        };
        "backend-lalr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."happy-lib".components.sublibs.grammar or (errorHandler.buildDepError "happy-lib:grammar"))
            (hsPkgs."happy-lib".components.sublibs.tabular or (errorHandler.buildDepError "happy-lib:tabular"))
          ];
          buildable = true;
        };
        "backend-glr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."happy-lib".components.sublibs.grammar or (errorHandler.buildDepError "happy-lib:grammar"))
            (hsPkgs."happy-lib".components.sublibs.tabular or (errorHandler.buildDepError "happy-lib:tabular"))
          ];
          buildable = true;
        };
      };
    };
  }