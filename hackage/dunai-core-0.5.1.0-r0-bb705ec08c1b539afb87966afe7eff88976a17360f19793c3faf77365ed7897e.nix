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
      identifier = { name = "dunai-core"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Ivan Perez, Manuel Bärenz";
      homepage = "https://github.com/turion/dunai-core";
      url = "";
      synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.\n(Core library fork.)";
      description = "Dunai is a DSL for strongly-typed CPS-based composable transformations.\n\nDunai is based on a concept of Monadic Stream Functions (MSFs). MSFs are\ntransformations defined by a function @unMSF :: MSF m a b -> a -> m (b, MSF m a b)@\nthat executes one step of a simulation, and produces an output in a monadic\ncontext, and a continuation to be used for future steps.\n\nMSFs are a generalisation of the implementation mechanism used by Yampa,\nWormholes and other FRP and reactive implementations.\n\nWhen combined with different monads, they produce interesting effects. For\nexample, when combined with the @Maybe@ monad, they become transformations\nthat may stop producing outputs (and continuations). The @Either@ monad gives\nrise to MSFs that end with a result (akin to Tasks in Yampa, and Monadic\nFRP).\n\nFlattening, that is, going from some structure @MSF (t m) a b@ to @MSF m a b@\nfor a specific transformer @t@ often gives rise to known FRP constructs. For\ninstance, flattening with @EitherT@ gives rise to switching, and flattening\nwith @ListT@ gives rise to parallelism with broadcasting.\n\nMSFs can be used to implement many FRP variants, including Arrowized FRP,\nClassic FRP, and plain reactive programming. Arrowized and applicative\nsyntax are both supported.\n\nFor a very detailed introduction to MSFs, see:\n<http://dl.acm.org/citation.cfm?id=2976010>\n(mirror: <http://www.cs.nott.ac.uk/~psxip1/#FRPRefactored>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }