{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      debugoutput = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "MutationOrder";
          version = "0.0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Maria Beatriz Walter Costa, Christian Hoener zu Siederdissen, 2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Maria Beatriz Walter Costa, Christian Hoener zu Siederdissen, 2017";
        homepage = "https://github.com/choener/MutationOrder";
        url = "";
        synopsis = "Most likely order of mutation events in RNA";
        description = "Determine the most likely order in which single nucleotide\nmutations happened between two RNA sequences.\n\nDeveloped to analyse the @HAR 1@ region, but agnostic to the\nactual sequences and can be used to analyze any RNA sequence\nthat fits the algorithmic constraints.\n\nAs long as the two input RNAs are small enough enough (couple\nhundred nucleotides) and the number of mutations is small\nenough (around 20-26, since the algorithm is exponential in\nthis number) the algorithm should work for similar problems\nwithout changes.\n\nWe currently only consider point mutations, not in-dels.";
        buildType = "Simple";
      };
      components = {
        MutationOrder = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.bytestring-trie
            hsPkgs.cereal
            hsPkgs.cereal-vector
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.errors
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.log-domain
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.serialize-instances
            hsPkgs.split
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-strategies
            hsPkgs.zlib
            hsPkgs.ADPfusion
            hsPkgs.ADPfusionSet
            hsPkgs.bimaps
            hsPkgs.BiobaseXNA
            hsPkgs.DPutils
            hsPkgs.FormalGrammars
            hsPkgs.OrderedBits
            hsPkgs.PrimitiveArray
            hsPkgs.PrimitiveArray-Pretty
            hsPkgs.ShortestPathProblems
            hsPkgs.ViennaRNA-bindings
          ];
        };
        exes = {
          MutationOrder = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.errors
              hsPkgs.file-embed
              hsPkgs.filepath
              hsPkgs.MutationOrder
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.vector
              hsPkgs.MutationOrder
            ];
          };
        };
      };
    }