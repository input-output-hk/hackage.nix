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
      specVersion = "1.8";
      identifier = {
        name = "unordered-containers-rematch";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@gmail.com";
      author = "Tom Crayford";
      homepage = "http://github.com/tcrayford/rematch";
      url = "";
      synopsis = "Rematch support for unordered containers";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."rematch" or (errorHandler.buildDepError "rematch"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."rematch" or (errorHandler.buildDepError "rematch"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }