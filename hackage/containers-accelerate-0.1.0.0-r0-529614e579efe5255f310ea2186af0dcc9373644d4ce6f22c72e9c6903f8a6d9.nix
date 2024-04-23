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
      identifier = { name = "containers-accelerate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/containers-accelerate#readme";
      url = "";
      synopsis = "Hashing-based container types";
      description = "Please see the README on GitHub at <https://github.com/tmcdonell/containers-accelerate#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable-accelerate" or (errorHandler.buildDepError "hashable-accelerate"))
        ];
        buildable = true;
      };
      tests = {
        "containers-accelerate-test" = {
          depends = [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."containers-accelerate" or (errorHandler.buildDepError "containers-accelerate"))
            (hsPkgs."half" or (errorHandler.buildDepError "half"))
            (hsPkgs."hashable-accelerate" or (errorHandler.buildDepError "hashable-accelerate"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }