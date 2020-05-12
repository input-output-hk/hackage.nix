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
      identifier = { name = "profunctor-optics"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris McKinlay";
      maintainer = "Chris McKinlay";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/profunctor-optics";
      url = "";
      synopsis = "A compact optics library compatible with the typeclasses in profunctors.";
      description = "This package provides utilities for creating and manipulating profunctor-based optics. Some highlights:\n\nFull complement of isos, prisms, lenses, grates, traversals, cotraversals, views, setters, folds, and more.\n\nCompact & straight-forward implementation.\n\nFully interoperable. All that is required to create optics is the `profunctors` package. Optics compose with (.) from `Prelude` as is typical. Conversions to & from the Van Laarhoven representations are provided for each optic type.\n\nWell-documented properties and exportable predicates for testing your own optics.\n\nSee the <https://github.com/cmk/profunctor-optics/blob/master/profunctor-optics/README.md Readme> file for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."coapplicative" or (errorHandler.buildDepError "coapplicative"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."lawz" or (errorHandler.buildDepError "lawz"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."rings" or (errorHandler.buildDepError "rings"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."profunctor-optics" or (errorHandler.buildDepError "profunctor-optics"))
            ];
          buildable = true;
          };
        };
      };
    }