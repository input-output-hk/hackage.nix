{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hierarchical-spectral-clustering";
        version = "0.4.0.2";
        };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/hierarchical-spectral-clustering#readme";
      url = "";
      synopsis = "Hierarchical spectral clustering of a graph.";
      description = "Generate a tree of hierarchical spectral clustering using Newman-Girvan modularity as a stopping criteria.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.cassava)
          (hsPkgs.clustering)
          (hsPkgs.containers)
          (hsPkgs.eigen)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.hmatrix)
          (hsPkgs.fgl)
          (hsPkgs.managed)
          (hsPkgs.modularity)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.spectral-clustering)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-cassava)
          (hsPkgs.streaming-with)
          (hsPkgs.text)
          (hsPkgs.tree-fun)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "cluster-tree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hierarchical-spectral-clustering)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hmatrix)
            (hsPkgs.lens)
            (hsPkgs.optparse-generic)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }