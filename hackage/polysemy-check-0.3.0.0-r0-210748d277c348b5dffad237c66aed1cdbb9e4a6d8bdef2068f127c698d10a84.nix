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
      identifier = { name = "polysemy-check"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/polysemy-research/polysemy-check#readme";
      url = "";
      synopsis = "QuickCheck for Polysemy";
      description = "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy-check#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
          (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
            (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-check" or (errorHandler.buildDepError "polysemy-check"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }