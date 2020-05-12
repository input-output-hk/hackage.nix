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
      specVersion = "1.8.0.2";
      identifier = { name = "pipes-transduce"; version = "0.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Daniel Diaz";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Interfacing pipes with foldl folds.";
      description = "Grab-bag of functions for interfacing pipes with foldl folds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."conceit" or (errorHandler.buildDepError "conceit"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-transduce" or (errorHandler.buildDepError "pipes-transduce"))
            ];
          buildable = true;
          };
        };
      };
    }