{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "monte-carlo";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://github.com/patperry/monte-carlo";
        url = "";
        synopsis = "A monad and transformer for Monte Carlo calculations.";
        description = "A monad and transformer for Monte Carlo calculations.  The\nmonads carry and provide access to a random number generator.\nImportantly, they only keep one copy of the generator state,\nand so are much more efficient than MonadRandom.  Currently,\nonly the generator that comes with the GNU Scientific Library\n(GSL) is supported.";
        buildType = "Simple";
      };
      components = {
        monte-carlo = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.gsl-random
            hsPkgs.uvector
          ];
        };
      };
    }