{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flat-mcmc";
          version = "1.3.0";
        };
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
        flat-mcmc = {
          depends  = [
            hsPkgs.base
            hsPkgs.formatting
            hsPkgs.mcmc-types
            hsPkgs.monad-par
            hsPkgs.monad-par-extras
            hsPkgs.mwc-probability
            hsPkgs.pipes
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        exes = {
          bnn-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.flat-mcmc
              hsPkgs.vector
            ];
          };
        };
        tests = {
          rosenbrock = {
            depends  = [
              hsPkgs.base
              hsPkgs.flat-mcmc
              hsPkgs.vector
            ];
          };
          bnn = {
            depends  = [
              hsPkgs.base
              hsPkgs.flat-mcmc
              hsPkgs.vector
            ];
          };
        };
      };
    }