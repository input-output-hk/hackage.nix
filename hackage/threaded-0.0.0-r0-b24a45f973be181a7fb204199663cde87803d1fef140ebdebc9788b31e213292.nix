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
      identifier = { name = "threaded"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/threaded#readme";
      url = "";
      synopsis = "Manage concurrently operating threads without having to spark them";
      description = "Please see the README on GitHub at <https://github.com/athanclark/threaded#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chan" or (errorHandler.buildDepError "chan"))
          (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tmapmvar" or (errorHandler.buildDepError "tmapmvar"))
        ];
        buildable = true;
      };
      tests = {
        "threaded-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chan" or (errorHandler.buildDepError "chan"))
            (hsPkgs."extractable-singleton" or (errorHandler.buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."monad-control-aligned" or (errorHandler.buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."threaded" or (errorHandler.buildDepError "threaded"))
            (hsPkgs."tmapmvar" or (errorHandler.buildDepError "tmapmvar"))
          ];
          buildable = true;
        };
      };
    };
  }