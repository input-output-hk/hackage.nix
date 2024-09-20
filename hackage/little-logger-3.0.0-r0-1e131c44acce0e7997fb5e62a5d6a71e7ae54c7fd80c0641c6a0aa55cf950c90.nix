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
      identifier = { name = "little-logger"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/little-logger#readme";
      url = "";
      synopsis = "Basic logging based on monad-logger";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/little-logger#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
      tests = {
        "little-logger-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."little-logger" or (errorHandler.buildDepError "little-logger"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
      };
    };
  }