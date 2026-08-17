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
      specVersion = "3.0";
      identifier = { name = "cache-effectful"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hécate Moonlight";
      author = "Hécate Moonlight";
      homepage = "https://github.com/haskell-effectful/cache-effectful/tree/main/cache-effectful#readme";
      url = "";
      synopsis = "A Cache effect for the effectful ecosystem.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "cache-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
            (hsPkgs."cache-effectful" or (errorHandler.buildDepError "cache-effectful"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }