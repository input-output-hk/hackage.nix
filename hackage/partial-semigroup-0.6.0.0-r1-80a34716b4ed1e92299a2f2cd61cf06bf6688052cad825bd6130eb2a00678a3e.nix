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
      identifier = { name = "partial-semigroup"; version = "0.6.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/partial-semigroup";
      url = "";
      synopsis = "A partial binary associative operator";
      description = "A partial semigroup is like a semigroup, but the operator\nis partial. We represent this in Haskell as a total function\n@(<>?) :: a -> a -> Maybe a@.\n\nThe\n<https://hackage.haskell.org/package/partial-semigroup-hedgehog partial-semigroup-hedgehog>\ncompanion package provides support for checking the partial\nsemigroup associativity axiom using the\n<https://hackage.haskell.org/package/hedgehog hedgehog>\npackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."partial-semigroup" or (errorHandler.buildDepError "partial-semigroup"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."partial-semigroup" or (errorHandler.buildDepError "partial-semigroup"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
        "generics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."partial-semigroup" or (errorHandler.buildDepError "partial-semigroup"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }