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
      specVersion = "1.12";
      identifier = { name = "quickcheck-combinators"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2023 (c) Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/quickcheck-combinators#readme";
      url = "";
      synopsis = "Simple type-level combinators for augmenting QuickCheck instances.";
      description = "Please see the README on GitHub at <https://github.com/athanclark/quickcheck-combinators#README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unfoldable-restricted" or (errorHandler.buildDepError "unfoldable-restricted"))
          (hsPkgs."unit-constraint" or (errorHandler.buildDepError "unit-constraint"))
        ];
        buildable = true;
      };
    };
  }