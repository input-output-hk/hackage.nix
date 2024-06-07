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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "automaton"; version = "1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Effectful streams and automata in initial encoding";
      description = "Effectful streams have an internal state and a step function.\nVarying the effect type, this gives many different useful concepts:\nFor example with a reader effect, it results in automata (a.k.a transducers or state machines).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "automaton-test" = {
          depends = [
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."automaton" or (errorHandler.buildDepError "automaton"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }