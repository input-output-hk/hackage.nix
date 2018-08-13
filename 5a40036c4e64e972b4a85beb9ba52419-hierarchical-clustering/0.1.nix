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
      specVersion = "1.6";
      identifier = {
        name = "hierarchical-clustering";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Algorithms for single, average/UPGMA and complete linkage clustering.";
      description = "This package provides a function to create a dendrogram from a\nlist of items and a distance function between them.  Initially\na singleton cluster is created for each item, and then new,\nbigger clusters are created by merging the two clusters with\nleast distance between them.  The distance between two clusters\nis calculated according to the linkage type.  The dendrogram\nrepresents not only the clusters but also the order on which\nthey were created.\n\nThis function uses a naïve algorithm that represents distances\nin a rectangular distance matrix.  There could be space\nimprovements (e.g. using a triangular matrix structure) and\ntime improvements (e.g. using a finger tree to avoid traversing\nthe whole matrix on every iteration just to see what the\nminimum is).";
      buildType = "Simple";
    };
    components = {
      "hierarchical-clustering" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }