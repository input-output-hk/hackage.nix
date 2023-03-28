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
      identifier = { name = "reflex-potatoes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Peter Lu";
      maintainer = "chippermonky@gmail.com";
      author = "pdlla";
      homepage = "https://github.com/pdlla/reflex-potatoes#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/pdlla/reflex-potatoes#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          ];
        buildable = true;
        };
      tests = {
        "reflex-potatoes-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-potatoes" or (errorHandler.buildDepError "reflex-potatoes"))
            (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            ];
          buildable = true;
          };
        };
      };
    }