{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "statistics-hypergeometric-genvar";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015 Sam Rijs\n2005 Robert Kern\n1998 Ivan Frohne";
        maintainer = "Sam Rijs <srijs@airpost.net>";
        author = "Sam Rijs <srijs@airpost.net>";
        homepage = "https://github.com/srijs/statistics-hypergeometric-genvar";
        url = "";
        synopsis = "Random variate generation from hypergeometric distributions";
        description = "Supplements the @Statistics.Distribution.Hypergeometric@\nmodule from the excellent @statistics@ package.\n\nImplements the interfaces @ContGen@ and @DiscreteGen@ for\n@HypergeometricDistribution@. Provides it's own function\n@genVar@ generalised over @Integral@.";
        buildType = "Simple";
      };
      components = {
        statistics-hypergeometric-genvar = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.mwc-random
            hsPkgs.math-functions
            hsPkgs.statistics
          ];
        };
      };
    }