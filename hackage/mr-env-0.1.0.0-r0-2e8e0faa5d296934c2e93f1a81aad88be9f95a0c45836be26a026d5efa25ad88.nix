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
      specVersion = "2.2";
      identifier = { name = "mr-env"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Christian Rocha";
      maintainer = "christian@rocha.is";
      author = "Christian Rocha";
      homepage = "https://github.com/meowgorithm/mr-env#readme";
      url = "";
      synopsis = "A simple way to read environment variables in Haskell";
      description = "A simple way to read environment variables with fallback values in\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test-general" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mr-env" or (errorHandler.buildDepError "mr-env"))
          ];
          buildable = true;
        };
      };
    };
  }