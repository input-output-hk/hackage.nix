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
      identifier = { name = "linear-tests"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 pdlla";
      maintainer = "chippermonky@gmail.com";
      author = "pdlla";
      homepage = "https://github.com/pdlla/linear-tests#readme";
      url = "";
      synopsis = "Linear Algebra";
      description = "Please see the README on GitHub at <https://github.com/pdlla/linear-tests#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
      tests = {
        "linear-tests-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."linear-tests" or (errorHandler.buildDepError "linear-tests"))
          ];
          buildable = true;
        };
      };
    };
  }