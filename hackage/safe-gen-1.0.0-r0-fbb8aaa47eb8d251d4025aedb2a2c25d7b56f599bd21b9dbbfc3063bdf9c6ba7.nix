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
      specVersion = "2.4";
      identifier = { name = "safe-gen"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Jonas Carpay";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Jonas Carpay";
      homepage = "https://github.com/xc-jp/safe-gen#readme";
      url = "";
      synopsis = "Recursive Arbitrary instances without headaches";
      description = "safe-gen allows you to write and derive Arbitrary instances for recursive data without having to worry about termination.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "safe-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."safe-gen" or (errorHandler.buildDepError "safe-gen"))
          ];
          buildable = true;
        };
      };
    };
  }