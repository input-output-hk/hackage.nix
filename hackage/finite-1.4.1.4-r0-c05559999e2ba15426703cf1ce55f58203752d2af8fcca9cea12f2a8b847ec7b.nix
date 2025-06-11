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
      identifier = { name = "finite"; version = "1.4.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Felix Klein <klein@react.uni-saarland.de>";
      author = "Felix Klein <klein@react.uni-saarland.de>";
      homepage = "";
      url = "";
      synopsis = "Finite ranges via types";
      description = "A framework for capturing finite ranges with\ntypes, where the sizes of the ranges are not\nfixed statically at compile time, but instead\nare passed at run-time via implicit parameters.\n\nThis is especially useful for objects of bounded\nsize, e.g. finite automata, where the number of\nelements being part of the object, e.g. the number\nof states, is well-defined in the context of the\nobject.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "default" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."finite" or (errorHandler.buildDepError "finite"))
          ];
          buildable = true;
        };
      };
    };
  }