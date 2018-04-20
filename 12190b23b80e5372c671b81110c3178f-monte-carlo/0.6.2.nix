{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monte-carlo";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Perry <patperry@gmail.com>";
        author = "Patrick Perry";
        homepage = "http://github.com/patperry/hs-monte-carlo";
        url = "";
        synopsis = "A monad and transformer for Monte Carlo calculations.";
        description = "A monad and transformer for performing Monte Carlo\ncalculations. This monad carries and provides access to\na pseudo-random number generator. Internally, the monad\nmutates rather than copies the random gnerator state.  By\navoiding copies, it can deliver faster performance than\nmany pure random number implementations.  The package is\nbuilt around the facilities provided by the GNU Scientific\nLibrary (GSL).";
        buildType = "Simple";
      };
      components = {
        monte-carlo = {
          depends  = [
            hsPkgs.base
            hsPkgs.gsl-random
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          monte-carlo-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gsl-random
              hsPkgs.primitive
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.ieee754
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }