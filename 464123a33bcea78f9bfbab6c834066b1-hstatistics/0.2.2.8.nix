{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hstatistics";
          version = "0.2.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "(c) A.V.H. McPhail 2010, 2011";
        maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
        author = "Vivian McPhail";
        homepage = "http://code.haskell.org/hstatistics";
        url = "";
        synopsis = "Statistics";
        description = "Purely functional interface for statistics based on hmatrix and hmatrix-gsl-stats\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package and compatible with the 'statistics' package\n<http://hackage.haskell.org/package/statistics\n\nFeature requests, suggestions, and bug fixes welcome.";
        buildType = "Simple";
      };
      components = {
        hstatistics = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.hmatrix
            hsPkgs.hmatrix-gsl-stats
          ];
        };
      };
    }