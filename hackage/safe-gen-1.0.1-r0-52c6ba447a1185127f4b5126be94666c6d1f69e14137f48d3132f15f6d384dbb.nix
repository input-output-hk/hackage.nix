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
      identifier = { name = "safe-gen"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Jonas Carpay";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Jonas Carpay";
      homepage = "https://github.com/xc-jp/safe-gen#readme";
      url = "";
      synopsis = "Recursive Arbitrary instances without headaches";
      description = "Write and derive Arbitrary instances for recursive data without worrying about termination.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
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