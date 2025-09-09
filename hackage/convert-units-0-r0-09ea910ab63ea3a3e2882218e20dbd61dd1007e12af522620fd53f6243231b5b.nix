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
      specVersion = "2.2";
      identifier = { name = "convert-units"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "BSD 3";
      maintainer = "alice.rixte@u-bordeaux.fr";
      author = "Alice Rixte";
      homepage = "https://github.com/AliceRixte/convert-units#readme";
      url = "";
      synopsis = "Arithmetic and type checked conversions between units.";
      description = "Please see the README on GitHub at <https://github.com/AliceRixte/convert-units/blob/main/README.md>";
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
        "convert-units-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."convert-units" or (errorHandler.buildDepError "convert-units"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "convert-units-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."convert-units" or (errorHandler.buildDepError "convert-units"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }