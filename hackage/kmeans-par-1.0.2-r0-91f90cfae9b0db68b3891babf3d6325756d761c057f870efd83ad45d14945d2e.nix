{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kmeans-par"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Sequential and parallel implementations of Lloyd's algorithm.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
          (hsPkgs.parallel)
          (hsPkgs.split)
          ];
        };
      benchmarks = {
        "kmeans-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.normaldistribution)
            (hsPkgs.kmeans-par)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }