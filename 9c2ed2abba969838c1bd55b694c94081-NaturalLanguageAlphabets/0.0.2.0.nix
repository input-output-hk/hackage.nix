{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "NaturalLanguageAlphabets";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2014-2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "https://github.com/choener/NaturalLanguageAlphabets";
        url = "";
        synopsis = "Alphabet and word representations";
        description = "Provides different encoding for characters and words in natural\nlanguage processing. A character will often be encoded as a\nunicode text string as we deal with multi-symbol characters.\n\nInternal encoding of IMMC symbols are 0-based integers, which\nallows for the use of unboxed containers.\n\nA very simple unigram-based scoring scheme and DSL to write\nsuch schemes are also provided.\n\n<https://github.com/choener/NaturalLanguageAlphabets/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        NaturalLanguageAlphabets = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.bimaps
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.deepseq
            hsPkgs.file-embed
            hsPkgs.hashable
            hsPkgs.hashtables
            hsPkgs.intern
            hsPkgs.QuickCheck
            hsPkgs.stringable
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-th-unbox
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.NaturalLanguageAlphabets
              hsPkgs.QuickCheck
              hsPkgs.stringable
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          BenchmarkNLA = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hashtables
              hsPkgs.mwc-random
              hsPkgs.NaturalLanguageAlphabets
              hsPkgs.random
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }