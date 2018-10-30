{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "NaturalLanguageAlphabets";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2014-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.bioinf.uni-leipzig.de/~choener/";
      url = "";
      synopsis = "Alphabet and word representations";
      description = "Provides different encoding for characters and words in natural\nlanguage processing. A character will often be encoded as a\nunicode text string as we deal with multi-symbol characters.\n\nInternal encoding of IMMC symbols are 0-based integers, which\nallows for the use of unboxed containers.\n\nA very simple unigram-based scoring scheme is also provided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.bimaps)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.intern)
          (hsPkgs.stringable)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      benchmarks = {
        "BenchmarkNLA" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashtables)
            (hsPkgs.mwc-random)
            (hsPkgs.NaturalLanguageAlphabets)
            (hsPkgs.random)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }