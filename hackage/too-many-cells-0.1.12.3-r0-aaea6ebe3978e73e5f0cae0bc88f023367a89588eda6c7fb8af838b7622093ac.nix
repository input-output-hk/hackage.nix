{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "too-many-cells"; version = "0.1.12.3"; };
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
          (hsPkgs.SVGFonts)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.birch-beer)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-graphviz)
          (hsPkgs.diagrams-lib)
          (hsPkgs.differential)
          (hsPkgs.directory)
          (hsPkgs.diversity)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.find-clumpiness)
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
          (hsPkgs.optparse-generic)
          (hsPkgs.palette)
          (hsPkgs.parallel)
          (hsPkgs.plots)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.spectral-clustering)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-cassava)
          (hsPkgs.streaming-utils)
          (hsPkgs.streaming-with)
          (hsPkgs.temporary)
          (hsPkgs.terminal-progress-bar)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.transformers)
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
            (hsPkgs.optparse-generic)
            ];
          };
        };
      };
    }