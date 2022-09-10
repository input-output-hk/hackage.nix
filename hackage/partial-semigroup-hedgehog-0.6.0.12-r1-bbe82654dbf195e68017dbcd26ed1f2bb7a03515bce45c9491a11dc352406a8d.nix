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
      identifier = {
        name = "partial-semigroup-hedgehog";
        version = "0.6.0.12";
        };
      license = "Apache-2.0";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/partial-semigroup";
      url = "";
      synopsis = "Property testing for partial semigroups using Hedgehog";
      description = "Provides a\n<https://hackage.haskell.org/package/hedgehog hedgehog>\nproperty to check the associativity axiom for the\n@PartialSemigroup@ class defined in the\n<https://hackage.haskell.org/package/partial-semigroup partial-semigroup>\npackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."partial-semigroup" or (errorHandler.buildDepError "partial-semigroup"))
          ];
        buildable = true;
        };
      };
    }