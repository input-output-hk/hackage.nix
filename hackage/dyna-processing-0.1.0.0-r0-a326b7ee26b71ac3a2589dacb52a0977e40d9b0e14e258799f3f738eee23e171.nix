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
      identifier = { name = "dyna-processing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/dyna-processing#readme";
      url = "";
      synopsis = "FRP library for processing-for-haskell package";
      description = "Defines FRP library for processing-for-haskell package (see examples in the repo's source)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."dyna" or (errorHandler.buildDepError "dyna"))
          (hsPkgs."processing-for-haskell" or (errorHandler.buildDepError "processing-for-haskell"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporal-media" or (errorHandler.buildDepError "temporal-media"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "dyna-processing-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dyna-processing" or (errorHandler.buildDepError "dyna-processing"))
            ];
          buildable = true;
          };
        };
      };
    }