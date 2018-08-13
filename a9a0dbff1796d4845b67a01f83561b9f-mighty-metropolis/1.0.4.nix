{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mighty-metropolis";
        version = "1.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/mighty-metropolis";
      url = "";
      synopsis = "The Metropolis algorithm.";
      description = "The classic Metropolis algorithm.\n\nWander around parameter space according to a simple spherical Gaussian\ndistribution.\n\nExports a 'mcmc' function that prints a trace to stdout, as well as a\n'metropolis' transition operator that can be used more generally.\n\n> import Numeric.MCMC.Metropolis\n>\n> rosenbrock :: [Double] -> Double\n> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 1 [0, 0] rosenbrock";
      buildType = "Simple";
    };
    components = {
      "mighty-metropolis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.primitive)
          (hsPkgs.mcmc-types)
          (hsPkgs.mwc-probability)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "rosenbrock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mighty-metropolis)
            (hsPkgs.mwc-probability)
          ];
        };
        "bnn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mighty-metropolis)
            (hsPkgs.mwc-probability)
          ];
        };
      };
    };
  }