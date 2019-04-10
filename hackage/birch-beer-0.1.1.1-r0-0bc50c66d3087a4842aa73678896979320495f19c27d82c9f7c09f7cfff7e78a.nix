{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "birch-beer"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/birch-beer#readme";
      url = "";
      synopsis = "Plot a colorful tree.";
      description = "Generate a tree for displaying a hierarchy of groups with colors, scaling, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.SVGFonts)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-graphviz)
          (hsPkgs.diagrams-gtk)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diversity)
          (hsPkgs.fgl)
          (hsPkgs.foldl)
          (hsPkgs.graphviz)
          (hsPkgs.gtk)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.hierarchical-spectral-clustering)
          (hsPkgs.lens)
          (hsPkgs.matrix-market-attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.palette)
          (hsPkgs.plots)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.spectral-clustering)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.typed-spreadsheet)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "birch-beer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.birch-beer)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.colour)
            (hsPkgs.containers)
            (hsPkgs.diagrams)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.diagrams-lib)
            (hsPkgs.hierarchical-spectral-clustering)
            (hsPkgs.lens)
            (hsPkgs.optparse-generic)
            (hsPkgs.sparse-linear-algebra)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }