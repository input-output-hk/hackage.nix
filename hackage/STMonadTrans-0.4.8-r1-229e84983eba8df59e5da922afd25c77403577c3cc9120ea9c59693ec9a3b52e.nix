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
      specVersion = "1.18";
      identifier = { name = "STMonadTrans"; version = "0.4.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Abel, josef.svenningsson@gmail.com";
      author = "Josef Svenningsson";
      homepage = "https://github.com/josefs/STMonadTrans";
      url = "";
      synopsis = "A monad transformer version of the ST monad";
      description = "A monad transformer version of the ST monad.\n\nWarning! This monad transformer should not be used with monads that\ncan contain multiple answers, like the list monad. The reason is that\nthe state token will be duplicated across the different answers and\nthis causes Bad Things to happen (such as loss of referential\ntransparency). Safe monads include the monads State, Reader, Writer,\nMaybe and combinations of their corresponding monad transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }