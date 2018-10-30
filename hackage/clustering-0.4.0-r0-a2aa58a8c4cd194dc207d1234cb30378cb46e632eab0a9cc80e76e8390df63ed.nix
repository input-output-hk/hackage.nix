{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clustering";
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "(c) 2015-2018 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "High performance clustering algorithms";
      description = "Following clutering methods are included in this library:\n\n1 Agglomerative hierarchical clustering. Complete linkage O(n^2),\nSingle linkage O(n^2), Average linkage O(n^2),\nWeighted linkage O(n^2), Ward's linkage O(n^2).\n\n2 KMeans clustering.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.matrices)
          (hsPkgs.mwc-random)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.mwc-random)
            (hsPkgs.matrices)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.clustering)
            (hsPkgs.hierarchical-clustering)
            (hsPkgs.split)
            (hsPkgs.inline-r)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.clustering)
            (hsPkgs.hierarchical-clustering)
            (hsPkgs.matrices)
          ];
        };
      };
    };
  }