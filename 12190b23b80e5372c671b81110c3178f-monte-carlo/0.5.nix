{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monte-carlo";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Perry <patperry@gmail.com>";
        author = "Patrick Perry";
        homepage = "http://github.com/patperry/hs-monte-carlo";
        url = "";
        synopsis = "A monad and transformer for Monte Carlo calculations.";
        description = "A monad and transformer for Monte Carlo calculations.  The\nmonads carry and provide access to a random number generator.\nImportantly, they only keep one copy of the generator state,\nand so are much more efficient than MonadRandom.  Currently,\nonly the generator that comes with the GNU Scientific Library\n(GSL) is supported.";
        buildType = "Simple";
      };
      components = {
        monte-carlo = {
          depends  = [
            hsPkgs.base
            hsPkgs.gsl-random
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.deepseq
          ];
        };
        tests = {
          monte-carlo-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gsl-random
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.ieee754
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
              hsPkgs.deepseq
            ];
          };
        };
      };
    }