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
      identifier = { name = "reflex-dynamic-containers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Peter Lu";
      maintainer = "chippermonky@gmail.com";
      author = "pdlla";
      homepage = "https://github.com/pdlla/reflex-dynamic-containers#readme";
      url = "";
      synopsis = "various dynamic containers for Reflex";
      description = "Please see the README on GitHub at <https://github.com/pdlla/reflex-dynamic-containers#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          ];
        buildable = true;
        };
      tests = {
        "reflex-dynamic-containers-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dynamic-containers" or (errorHandler.buildDepError "reflex-dynamic-containers"))
            (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            ];
          buildable = true;
          };
        };
      };
    }