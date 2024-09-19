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
      identifier = { name = "mockcat"; version = "0.5.1.0"; };
      license = "MIT";
      copyright = "2024 funnycat";
      maintainer = "funnycat <pujoheadsoft@gmail.com>";
      author = "funnycat <pujoheadsoft@gmail.com>";
      homepage = "https://github.com/pujoheadsoft/mockcat#readme";
      url = "";
      synopsis = "Mock library for test in Haskell.";
      description = "mockcat is a flexible and powerful mock library.\n\nIt provides the following main features.\n\n- Mock generation of monadic typeclasses\n\n- Generation of stub functions independent of typeclasses\n\n- Verification of stub functions\n\nStub functions can return not only values of monadic types, but also pure types.\n\nFor more please see the README on GitHub at <https://github.com/pujoheadsoft/mockcat#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "mockcat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mockcat" or (errorHandler.buildDepError "mockcat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }