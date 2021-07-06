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
      identifier = { name = "polysemy-keyed-state"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Katie Casamento <kcsmnt0@gmail.com>";
      author = "";
      homepage = "https://github.com/kcsmnt0/polysemy-keyed-state#readme";
      url = "";
      synopsis = "Effect for a set of stateful values indexed by a type of keys";
      description = "The @KeyedState k@ effect provides access to a set of stateful values indexed by some key type @k :: Type -> Type@, where a key of type @k a@ can be used to access a stateful value of type @a@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."trivial-constraint" or (errorHandler.buildDepError "trivial-constraint"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."trivial-constraint" or (errorHandler.buildDepError "trivial-constraint"))
            ];
          buildable = true;
          };
        };
      };
    }