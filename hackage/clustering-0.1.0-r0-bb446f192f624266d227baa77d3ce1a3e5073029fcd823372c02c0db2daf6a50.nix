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
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "fast clustering algorithms";
      description = "O(N^2) implementations for a wide range of hierarchical\nclustering schemes, including complete linkage, single linkage,\naverage linkage, weighted linkage, and Ward's method.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.clustering)
            (hsPkgs.hierarchical-clustering)
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
          ];
        };
      };
    };
  }