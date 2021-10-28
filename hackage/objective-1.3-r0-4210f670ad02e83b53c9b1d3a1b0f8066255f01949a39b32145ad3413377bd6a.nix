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
      specVersion = "2.4";
      identifier = { name = "objective"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2021 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/objective";
      url = "";
      synopsis = "Composable objects";
      description = "Composable objects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."monad-skeleton" or (errorHandler.buildDepError "monad-skeleton"))
          ];
        buildable = true;
        };
      };
    }