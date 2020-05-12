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
      specVersion = "1.10";
      identifier = { name = "forbidden-fruit"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "minpou.primer@gmail.com";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/forbidden-fruit";
      url = "";
      synopsis = "A library accelerates imperative style programming.";
      description = "A library accelerates imperative style programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."control-monad-loop" or (errorHandler.buildDepError "control-monad-loop"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }