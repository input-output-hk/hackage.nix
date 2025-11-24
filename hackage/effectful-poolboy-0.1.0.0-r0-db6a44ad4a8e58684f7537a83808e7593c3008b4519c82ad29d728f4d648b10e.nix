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
      identifier = { name = "effectful-poolboy"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "foss@difolco.dev";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/poolboy";
      url = "";
      synopsis = "Simple work queue for bounded concurrency (effectful wrapper)";
      description = "In-memory work queue helping with load management (effectful wrapper).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."poolboy" or (errorHandler.buildDepError "poolboy"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-poolboy" or (errorHandler.buildDepError "effectful-poolboy"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."poolboy" or (errorHandler.buildDepError "poolboy"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
      };
    };
  }