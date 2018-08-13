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
      specVersion = "1.2.0";
      identifier = {
        name = "monte-carlo";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/monte-carlo";
      url = "";
      synopsis = "A monad and transformer for Monte Carlo calculations.";
      description = "A monad and transformer for Monte Carlo calculations.  The monads\ncarry and provide access to a random number generator.  Importantly,\nthey only keep one copy of the generator state, and so are much more\nefficient than MonadRandom.  Currently, only the generator that comes\nwith the GNU Scientific Library is supported.\n";
      buildType = "Simple";
    };
    components = {
      "monte-carlo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.gsl-random)
        ];
      };
    };
  }