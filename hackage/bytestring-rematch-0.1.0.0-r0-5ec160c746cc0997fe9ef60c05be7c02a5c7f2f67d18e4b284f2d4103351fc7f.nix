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
      identifier = { name = "bytestring-rematch"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@gmail.com";
      author = "Tom Crayford";
      homepage = "github.com/tcrayford/rematch";
      url = "";
      synopsis = "Rematch support for ByteString";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."rematch" or (errorHandler.buildDepError "rematch"))
            ];
          buildable = true;
          };
        };
      };
    }