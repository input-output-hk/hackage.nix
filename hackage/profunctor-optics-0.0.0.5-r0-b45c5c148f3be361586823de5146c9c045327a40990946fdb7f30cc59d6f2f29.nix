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
      identifier = { name = "profunctor-optics"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris McKinlay";
      maintainer = "Chris McKinlay";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/profunctor-optics";
      url = "";
      synopsis = "An optics library compatible with the typeclasses in 'profunctors'.";
      description = "This package provides utilities for creating and manipulating profunctor-based optics. Some highlights:\n\nFull complement of isos, prisms, lenses, grates, affines, traversals, cotraversals, views, setters, folds, and more.\n\nComposable indexed or co-indexed variants of most of the above.\n\nCompact & straight-forward implementation. No inscrutable internal modules, lawless or otherwise ancillary typeclasses, or heavy type-level machinery.\n\nFully interoperable. All that is required to create optics (standard, indexable, or co-indexable) is the `profunctors` package. Optics compose with (.) from `Prelude` as is typical. If you want to provide profunctor optics for your own types in your own libraries, you can do so without incurring a dependency on this package. Conversions to & from the Van Laarhoven representations are provided for each optic type.\n\nWell-documented properties and exportable predicates for testing your own optics.\n\nSee the <https://github.com/cmk/profunctor-optics/blob/master/profunctor-optics/README.md Readme> file for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."connections" or (errorHandler.buildDepError "connections"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."profunctor-arrows" or (errorHandler.buildDepError "profunctor-arrows"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."rings" or (errorHandler.buildDepError "rings"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."profunctor-optics" or (errorHandler.buildDepError "profunctor-optics"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."connections" or (errorHandler.buildDepError "connections"))
            (hsPkgs."profunctor-optics" or (errorHandler.buildDepError "profunctor-optics"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }