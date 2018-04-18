{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "WordAlignment";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2013-2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2013-2017";
        homepage = "https://github.com/choener/WordAlignment";
        url = "";
        synopsis = "Bigram word pair alignments.";
        description = "The library provides fast dynamic programming algorithms to\nalign word pairs using either a simple or a bigram scoring\nscheme. Simple schemes are unigram schemes in nature but use an\nad-hoc scoring scheme. Bigram schemes use actual training data\nfor bigram frequences.\n\nThe WordAlign executable provides a wrapper around the provided\nalignment algorithms. Call WordAlign without any arguments (or\njust *WordAlign manual* to display the README.md).";
        buildType = "Simple";
      };
      components = {
        WordAlignment = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.file-embed
            hsPkgs.fmlist
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.intern
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pipes
            hsPkgs.primitive
            hsPkgs.strict
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.transformers
            hsPkgs.tuple-th
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.ADPfusion
            hsPkgs.AlignmentAlgorithms
            hsPkgs.bimaps
            hsPkgs.DPutils
            hsPkgs.FormalGrammars
            hsPkgs.GrammarProducts
            hsPkgs.LinguisticsTypes
            hsPkgs.NaturalLanguageAlphabets
            hsPkgs.PrimitiveArray
          ];
        };
        exes = {
          WordAlign = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.file-embed
              hsPkgs.intern
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.parallel
              hsPkgs.pipes
              hsPkgs.strict
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.DPutils
              hsPkgs.LinguisticsTypes
              hsPkgs.NaturalLanguageAlphabets
              hsPkgs.WordAlignment
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.split
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-silver
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.DPutils
              hsPkgs.NaturalLanguageAlphabets
              hsPkgs.WordAlignment
            ];
          };
        };
      };
    }