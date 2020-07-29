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
      identifier = { name = "monad-control-identity"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/monad-control-identity";
      url = "";
      synopsis = "Stronger classes than monad-control";
      description = "This package defines the type class MonadBaseControlIdentity, which is very\nsimilar to MonadBaseControl from monad-control.\nThe difference is, that MonadBaseControlIdentity instances are only valid,\nwhen there is no monadic state.\nThis results in simpler type signatures to lift values in contravariant\npositions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }