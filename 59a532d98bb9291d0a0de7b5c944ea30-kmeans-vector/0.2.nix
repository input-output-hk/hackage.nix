{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kmeans-vector";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2012 Alp Mestanogullari";
        maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
        author = "Alp Mestanogullari <alpmestan@gmail.com>, Ville Tirronen";
        homepage = "http://github.com/alpmestan/kmeans-vector";
        url = "";
        synopsis = "An implementation of the kmeans clustering algorithm based on the vector package";
        description = "Provides a simple (but efficient) implementation of the k-means clustering algorithm. The goal of this algorithm is to, given a list of n-dimensional points, regroup them in k groups, such that each point gets to be in the group to which it is the closest to (using the 'center' of the group).\n\nCHANGELOG\n\nkmeans-vector-0.2 supports having feature vectors associated to objects, and thus computing kmeans on these vectors, letting you recover the initial objects.";
        buildType = "Simple";
      };
      components = {
        "kmeans-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }