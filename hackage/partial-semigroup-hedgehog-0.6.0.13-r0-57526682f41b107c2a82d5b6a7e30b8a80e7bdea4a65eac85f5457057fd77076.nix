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
        version = "0.6.0.13";
      };
      license = "Apache-2.0";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/partial-semigroup-hedgehog";
      url = "";
      synopsis = "Property testing for partial semigroups using Hedgehog";
      description = "Provides a hedgehog property to check the associativity axiom\nfor the PartialSemigroup class defined in the partial-semigroup package.";
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