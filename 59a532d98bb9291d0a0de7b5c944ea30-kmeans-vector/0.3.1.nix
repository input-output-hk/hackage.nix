{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "kmeans-vector";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2015 Alp Mestanogullari";
        maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
        author = "Alp Mestanogullari <alpmestan@gmail.com>, Ville Tirronen";
        homepage = "http://github.com/alpmestan/kmeans-vector";
        url = "";
        synopsis = "An implementation of the kmeans clustering algorithm based on the vector package";
        description = "Provides a simple (but efficient) implementation of the k-means clustering algorithm. The goal of this algorithm is to, given a set of n-dimensional points, regroup them in k groups, such that each point gets to be in the group to which it is the closest to (using the 'center' of the group).\n\nCHANGELOG\n\n0.3: total rewrite of the code, the code scales much better on big inputs and is overall\nconsistently faster than the other kmeans implementations on hackage, on my laptop.\n0.2: supports having feature vectors associated to objects, and thus computing kmeans on these vectors, letting you recover the initial objects.";
        buildType = "Simple";
      };
      components = {
        "kmeans-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.mtl
          ];
        };
        exes = {
          "kmeans-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.kmeans-vector
              hsPkgs.probable
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.kmeans-vector
              hsPkgs.criterion
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }