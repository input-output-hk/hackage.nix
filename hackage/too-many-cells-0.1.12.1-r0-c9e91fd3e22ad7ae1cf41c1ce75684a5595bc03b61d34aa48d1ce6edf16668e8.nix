{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "too-many-cells"; version = "0.1.12.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/too-many-cells#readme";
      url = "";
      synopsis = "Cluster single cells and analyze cell clade relationships.";
      description = "Different methods to cluster and analyze single cell data with diversity indices and differential expression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.birch-beer)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-graphviz)
          (hsPkgs.differential)
          (hsPkgs.directory)
          (hsPkgs.diversity)
          (hsPkgs.find-clumpiness)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.foldl)
          (hsPkgs.graphviz)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.hierarchical-spectral-clustering)
          (hsPkgs.hmatrix)
          (hsPkgs.inline-r)
          (hsPkgs.lens)
          (hsPkgs.managed)
          (hsPkgs.matrix-market-attoparsec)
          (hsPkgs.modularity)
          (hsPkgs.mtl)
          (hsPkgs.palette)
          (hsPkgs.parallel)
          (hsPkgs.plots)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-cassava)
          (hsPkgs.streaming-with)
          (hsPkgs.SVGFonts)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.zlib)
          ];
        };
      exes = {
        "too-many-cells" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.too-many-cells)
            (hsPkgs.aeson)
            (hsPkgs.birch-beer)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.colour)
            (hsPkgs.containers)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.find-clumpiness)
            (hsPkgs.graphviz)
            (hsPkgs.hierarchical-spectral-clustering)
            (hsPkgs.inline-r)
            (hsPkgs.lens)
            (hsPkgs.matrix-market-attoparsec)
            (hsPkgs.modularity)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.palette)
            (hsPkgs.plots)
            (hsPkgs.spectral-clustering)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-utils)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }