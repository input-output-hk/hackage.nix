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
      identifier = { name = "pred-trie"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Predicative tries";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
          (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pred-trie" or (errorHandler.buildDepError "pred-trie"))
            (hsPkgs."tries" or (errorHandler.buildDepError "tries"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."sets" or (errorHandler.buildDepError "sets"))
            ];
          buildable = true;
          };
        };
      };
    }