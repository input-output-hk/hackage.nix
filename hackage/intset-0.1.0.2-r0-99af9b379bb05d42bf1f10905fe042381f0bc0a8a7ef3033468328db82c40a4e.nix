{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "intset";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/pxqr/intset";
      url = "";
      synopsis = "Pure, mergeable, succinct Int sets.";
      description = "This library provides persistent, time and space efficient integer\nsets implemented as dense big-endian patricia trees with buddy\nsuffixes compaction. In randomized settings this structure expected\nto be as fast as Data.IntSet from containers, but if a sets is\nlikely to have long continuous intervals it should be much faster.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bits-extras)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.intset)
          ];
        };
        "fusion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.intset)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.intset)
          ];
        };
      };
    };
  }