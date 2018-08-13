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
      specVersion = "1.8";
      identifier = {
        name = "kmeans-vector";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2015 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>, Ville Tirronen";
      homepage = "http://github.com/alpmestan/kmeans-vector";
      url = "";
      synopsis = "An implementation of the kmeans clustering algorithm based on the vector package";
      description = "Provides a simple (but efficient) implementation of the k-means clustering algorithm. The goal of this algorithm is to, given a set of n-dimensional points, regroup them in k groups, such that each point gets to be in the group to which it is the closest to (using the 'center' of the group).";
      buildType = "Simple";
    };
    components = {
      "kmeans-vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "kmeans-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.kmeans-vector)
            (hsPkgs.probable)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.kmeans-vector)
            (hsPkgs.criterion)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }