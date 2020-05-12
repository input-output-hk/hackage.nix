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
      identifier = { name = "flat-mcmc"; version = "1.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "https://github.com/jtobin/flat-mcmc";
      url = "";
      synopsis = "Painless general-purpose sampling.";
      description = "flat-mcmc is a Haskell library for painless, efficient, general-purpose\nsampling from continuous distributions.\n\nflat-mcmc uses an ensemble sampler that is invariant to affine\ntransformations of space.  It wanders a target probability distribution's\nparameter space as if it had been \"flattened\" or \"unstretched\" in some sense,\nallowing many particles to explore it locally and in parallel.\n\nIn general this sampler is useful when you want decent performance without\ndealing with any tuning parameters or local proposal distributions.\n\nflat-mcmc exports an 'mcmc' function that prints a trace to stdout, as well\nas a 'flat' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Flat\n> import qualified Data.Vector.Unboxed as U (Vector, toList, fromList)\n> import qualified Data.Vector as V (fromList)\n>\n> rosenbrock :: Particle -> Double\n> rosenbrock xs = negate (5  * (x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2) where\n>   [x0, x1] = U.toList xs\n>\n> ensemble :: Ensemble\n> ensemble = V.fromList [\n>     U.fromList [negate 1.0, negate 1.0]\n>   , U.fromList [negate 1.0, 1.0]\n>   , U.fromList [1.0, negate 1.0]\n>   , U.fromList [1.0, 1.0]\n>   ]\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 12500 ensemble rosenbrock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."mcmc-types" or (errorHandler.buildDepError "mcmc-types"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."monad-par-extras" or (errorHandler.buildDepError "monad-par-extras"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."flat-mcmc" or (errorHandler.buildDepError "flat-mcmc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "bnn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."flat-mcmc" or (errorHandler.buildDepError "flat-mcmc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }