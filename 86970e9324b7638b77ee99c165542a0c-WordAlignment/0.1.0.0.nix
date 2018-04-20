{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "WordAlignment";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2013-2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2013-2015";
        homepage = "https://github.com/choener/WordAlignment";
        url = "";
        synopsis = "Bigram word pair alignments.";
        description = "The library provides fast dynamic programming algorithms to\nalign word pairs using either a simple or a bigram scoring\nscheme.";
        buildType = "Simple";
      };
      components = {
        WordAlignment = {
          depends  = [
            hsPkgs.base
            hsPkgs.ADPfusion
            hsPkgs.AlignmentAlgorithms
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.control-monad-omega
            hsPkgs.deepseq
            hsPkgs.file-embed
            hsPkgs.fmlist
            hsPkgs.FormalGrammars
            hsPkgs.ghc-prim
            hsPkgs.GrammarProducts
            hsPkgs.hashable
            hsPkgs.intern
            hsPkgs.lens
            hsPkgs.LinguisticsTypes
            hsPkgs.NaturalLanguageAlphabets
            hsPkgs.primitive
            hsPkgs.PrimitiveArray
            hsPkgs.strict
            hsPkgs.stringable
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.transformers
            hsPkgs.tuple-th
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          WordAlign = {
            depends  = [
              hsPkgs.base
              hsPkgs.ascii-progress
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.file-embed
              hsPkgs.intern
              hsPkgs.LinguisticsTypes
              hsPkgs.NaturalLanguageAlphabets
              hsPkgs.parallel
              hsPkgs.strict
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.WordAlignment
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.WordAlignment
            ];
          };
        };
      };
    }