{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "NaturalLanguageAlphabets";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2014-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/NaturalLanguageAlphabets";
      url = "";
      synopsis = "Simple scoring schemes for word alignments";
      description = "Provides a simple scoring scheme for word alignments.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.bimaps)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          (hsPkgs.LinguisticsTypes)
          (hsPkgs.QuickCheck)
          (hsPkgs.stringable)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.LinguisticsTypes)
            (hsPkgs.NaturalLanguageAlphabets)
            (hsPkgs.QuickCheck)
            (hsPkgs.stringable)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      benchmarks = {
        "BenchmarkNLA" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashtables)
            (hsPkgs.LinguisticsTypes)
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