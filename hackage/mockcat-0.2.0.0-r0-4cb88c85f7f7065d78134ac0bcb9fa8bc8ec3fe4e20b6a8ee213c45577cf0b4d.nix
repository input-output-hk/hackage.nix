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
      identifier = { name = "mockcat"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2024 funnycat";
      maintainer = "funnycat <pujoheadsoft@gmail.com>";
      author = "funnycat <pujoheadsoft@gmail.com>";
      homepage = "https://github.com/pujoheadsoft/mockcat#readme";
      url = "";
      synopsis = "Simple mock function library for test in Haskell.";
      description = "mockcat is simple mock library for test in Haskell.\n\nmockcat provides so-called stubbing and verification functions.\n\nStub functions can return values of Pure Types as well as value of Monadic Types.\n\nExample:\n\n@\nf \\<- createStubFn $ \"expected arg\" |\\> \"return value\"\nprint $ f \"expected arg\" -- \"return value\"\n@\n\nFor more please see the README on GitHub at <https://github.com/pujoheadsoft/mockcat#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "mockcat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mockcat" or (errorHandler.buildDepError "mockcat"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }