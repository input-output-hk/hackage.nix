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
      specVersion = "1.6";
      identifier = { name = "rand-vars"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Romain Edelmann";
      author = "Romain Edelmann";
      homepage = "";
      url = "";
      synopsis = "Random variable library, with Functor, Applicative and Monad instances.";
      description = "Random variable library, with Functor, Applicative and Monad instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."IntervalMap" or (errorHandler.buildDepError "IntervalMap"))
          ];
        buildable = true;
        };
      };
    }