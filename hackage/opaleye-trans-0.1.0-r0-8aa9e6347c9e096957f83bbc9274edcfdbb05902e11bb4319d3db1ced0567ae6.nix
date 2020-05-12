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
      identifier = { name = "opaleye-trans"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Wraith";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
      url = "";
      synopsis = "A monad transformer for Opaleye";
      description = "A monad transformer for Opaleye";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
          ];
        buildable = true;
        };
      };
    }