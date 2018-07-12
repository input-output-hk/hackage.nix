{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "Gene-CluEDO";
          version = "0.0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2017";
        homepage = "https://github.com/choener/Gene-CluEDO";
        url = "";
        synopsis = "Hox gene clustering";
        description = "Gene Cluster Evolution Determined Order\n\n*Expansion of Gene Clusters and the Shortest Hamiltonian Path Problem*, Prohaska et al, 2017\n\nCalculate the most likely order of genes in a gene cluster.\n\nApart from being an interesting problem in computational\nbiology, it also serves as an example problem for dynamic\nprogramming over unordered sets with interfaces.\n\nBinaries available from github: <https://github.com/choener/Gene-CluEDO/releases>";
        buildType = "Simple";
      };
      components = {
        "Gene-CluEDO" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.log-domain
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.ADPfusion
            hsPkgs.ADPfusionSet
            hsPkgs.FormalGrammars
            hsPkgs.PrimitiveArray
            hsPkgs.PrimitiveArray-Pretty
            hsPkgs.ShortestPathProblems
          ];
        };
        exes = {
          "GeneCluEDO" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.Gene-CluEDO
            ];
          };
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.vector
              hsPkgs.Gene-CluEDO
            ];
          };
        };
      };
    }