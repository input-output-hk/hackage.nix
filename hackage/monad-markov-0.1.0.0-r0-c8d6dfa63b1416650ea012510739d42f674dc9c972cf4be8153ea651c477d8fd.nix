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
      identifier = { name = "monad-markov"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Arran D. Stewart 2018";
      maintainer = "maintainer@arranstewart.info";
      author = "Arran D. Stewart";
      homepage = "https://github.com/arranstewart/monad-markov";
      url = "";
      synopsis = "Markov process monad";
      description = "A monad transformer providing a monad in which computations have\naccess to state and a probabilistic transition function.\nThis can be used to model Markov chains.\n\nA type class is provided with one operation, \"nextState\",\nwhich transitions to the next state.\n\nThe transformer is built on top of MonadRandom\n(https://hackage.haskell.org/package/MonadRandom).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }