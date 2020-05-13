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
      identifier = { name = "HarmTrace-Base"; version = "1.6.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2018 Chordify B.V.";
      maintainer = "haskelldevelopers@chordify.net";
      author = "W. Bas de Haas, Jeroen Bransen and Jose Pedro Magalhaes";
      homepage = "https://github.com/chordify/HarmTrace-Base";
      url = "";
      synopsis = "Parsing and unambiguously representing musical chords.";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace-Base, a library for parsing and\nunambiguously representing musical chords.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-harmtrace-base" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HarmTrace-Base" or (errorHandler.buildDepError "HarmTrace-Base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }