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
      identifier = { name = "dyna-brick"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Anton Kholomiov";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/dyna-brick#readme";
      url = "";
      synopsis = "FRP for brick Terminal user interface library";
      description = "Defines FRP for brick Terminal user interface library (see dir examples at the repo's source)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."dyna" or (errorHandler.buildDepError "dyna"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."temporal-media" or (errorHandler.buildDepError "temporal-media"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ];
        buildable = true;
      };
      tests = {
        "dyna-brick-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dyna-brick" or (errorHandler.buildDepError "dyna-brick"))
          ];
          buildable = true;
        };
      };
    };
  }