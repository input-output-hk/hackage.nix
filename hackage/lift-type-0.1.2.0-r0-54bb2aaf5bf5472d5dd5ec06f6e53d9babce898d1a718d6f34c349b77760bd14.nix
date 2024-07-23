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
      identifier = { name = "lift-type"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/lift-type#readme";
      url = "";
      synopsis = "Lift a type from a Typeable constraint to a Template Haskell type";
      description = "Lift your types from a Typeable constraint to a Template Haskell type";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "lift-type-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lift-type" or (errorHandler.buildDepError "lift-type"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = true;
        };
      };
    };
  }