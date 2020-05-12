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
      identifier = { name = "monad-choice"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2020 Eamon Olive, Louis Hyde";
      maintainer = "ejolive97@gmail.com";
      author = "Eamon Olive, Louis Hyde";
      homepage = "https://gitlab.com/e-neighborhood-watch/monad-choice#readme";
      url = "";
      synopsis = "Monad, monad transformer, and typeclass representing choices.";
      description = "The Monad Choice library contains monads, monad transformers, and a typeclass representing a sequence of choices of objects of arbitrary types where future choices can depend on previous ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }