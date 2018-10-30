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
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2014-2017";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.file-embed)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.LinguisticsTypes)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.LinguisticsTypes)
            (hsPkgs.NaturalLanguageAlphabets)
          ];
        };
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
            (hsPkgs.random)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.LinguisticsTypes)
            (hsPkgs.NaturalLanguageAlphabets)
          ];
        };
      };
    };
  }