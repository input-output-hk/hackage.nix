{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hstatistics";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010--2014, 2016, 2017";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hstatistics";
      url = "";
      synopsis = "Statistics";
      description = "Purely functional interface for statistics based on hmatrix and hmatrix-gsl-stats\n\nThe vector type is Data.Vector.Storable from the 'vector' package and compatible with the 'statistics' package.\n<http://hackage.haskell.org/package/statistics>\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Simple";
    };
    components = {
      "hstatistics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
        ];
      };
    };
  }