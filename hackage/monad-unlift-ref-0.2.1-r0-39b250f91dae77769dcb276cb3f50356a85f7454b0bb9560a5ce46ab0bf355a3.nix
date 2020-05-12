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
      identifier = { name = "monad-unlift-ref"; version = "0.2.1"; };
      license = "MIT";
      copyright = "FP Complete";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/monad-unlift";
      url = "";
      synopsis = "Typeclasses for representing monad transformer unlifting";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-unlift" or (errorHandler.buildDepError "monad-unlift"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mutable-containers" or (errorHandler.buildDepError "mutable-containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }