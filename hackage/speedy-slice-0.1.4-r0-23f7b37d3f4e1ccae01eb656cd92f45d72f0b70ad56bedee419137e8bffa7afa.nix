{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "speedy-slice"; version = "0.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/speedy-slice";
      url = "";
      synopsis = "Speedy slice sampling.";
      description = "Speedy slice sampling.\n\nThis implementation of the slice sampling algorithm uses 'lens' as a means to\noperate over generic indexed traversable functors, so you can expect it to\nwork if your target function takes a list, vector, map, sequence, etc. as its\nargument.\n\nAdditionally you can sample over anything that's an instance of both 'Num' and\n'Variate', which is useful in the case of discrete parameters.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'slice' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Slice\n> import Data.Sequence (Seq, index, fromList)\n>\n> bnn :: Seq Double -> Double\n> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where\n>   x0 = index xs 0\n>   x1 = index xs 1\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 (fromList [0, 0]) bnn";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.mcmc-types)
          (hsPkgs.mwc-probability)
          (hsPkgs.pipes)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-probability)
            (hsPkgs.speedy-slice)
            ];
          };
        "bnn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mwc-probability)
            (hsPkgs.speedy-slice)
            ];
          };
        };
      };
    }