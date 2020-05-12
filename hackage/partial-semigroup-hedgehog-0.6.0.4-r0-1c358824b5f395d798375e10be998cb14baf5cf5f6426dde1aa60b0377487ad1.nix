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
      identifier = {
        name = "partial-semigroup-hedgehog";
        version = "0.6.0.4";
        };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
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