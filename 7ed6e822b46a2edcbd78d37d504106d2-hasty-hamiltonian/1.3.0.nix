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
        name = "hasty-hamiltonian";
        version = "1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/hasty-hamiltonian";
      url = "";
      synopsis = "Speedy traversal through parameter space.";
      description = "Gradient-based traversal through parameter space.\n\nThis implementation of HMC algorithm uses 'lens' as a means to operate over\ngeneric indexed traversable functors, so you can expect it to work if your\ntarget function takes a list, vector, map, sequence, etc. as its argument.\n\nIf you don't want to calculate your gradients by hand you can use the\nhandy <https://hackage.haskell.org/package/ad ad> library for automatic\ndifferentiation.\n\nExports a 'mcmc' function that prints a trace to stdout, a 'chain' function\nfor collecting results in memory, and a 'hamiltonian' transition operator\nthat can be used more generally.\n\n> import Numeric.AD (grad)\n> import Numeric.MCMC.Hamiltonian\n>\n> target :: RealFloat a => [a] -> a\n> target [x0, x1] = negate ((x0 + 2 * x1 - 7) ^ 2 + (2 * x0 + x1 - 5) ^ 2)\n>\n> gTarget :: [Double] -> [Double]\n> gTarget = grad target\n>\n> booth :: Target [Double]\n> booth = Target target (Just gTarget)\n>\n> main :: IO ()\n> main = withSystemRandom . asGenIO \$ mcmc 10000 0.05 20 [0, 0] booth";
      buildType = "Simple";
    };
    components = {
      "hasty-hamiltonian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.kan-extensions)
          (hsPkgs.mcmc-types)
          (hsPkgs.mwc-probability)
          (hsPkgs.lens)
          (hsPkgs.pipes)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "booth" = {
          depends  = [
            (hsPkgs.ad)
            (hsPkgs.base)
            (hsPkgs.mwc-probability)
            (hsPkgs.hasty-hamiltonian)
          ];
        };
      };
    };
  }