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
      identifier = { name = "language-js"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dias.h.bruno@gmail.com";
      author = "Bruno Dias";
      homepage = "";
      url = "";
      synopsis = "javascript parser for es6 and es7.";
      description = "javascript parser for es6 and es7.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."language-js" or (errorHandler.buildDepError "language-js"))
            ];
          buildable = true;
          };
        };
      };
    }