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
      identifier = { name = "adhoc-fixtures-hspec"; version = "0.1.0.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/adhoc-fixtures/adhoc-fixtures-hspec";
      url = "";
      synopsis = "Manage fine grained fixtures";
      description = "Helps improves tests crafting per-test fixtures (hspec support)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adhoc-fixtures" or (errorHandler.buildDepError "adhoc-fixtures"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."yarl" or (errorHandler.buildDepError "yarl"))
        ];
        buildable = true;
      };
      tests = {
        "adhoc-fixtures-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."adhoc-fixtures" or (errorHandler.buildDepError "adhoc-fixtures"))
            (hsPkgs."adhoc-fixtures-hspec" or (errorHandler.buildDepError "adhoc-fixtures-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."yarl" or (errorHandler.buildDepError "yarl"))
          ];
          buildable = true;
        };
      };
    };
  }