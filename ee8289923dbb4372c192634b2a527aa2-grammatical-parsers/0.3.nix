{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "grammatical-parsers";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Mario Blažević";
        maintainer = "Mario Blažević <blamario@protonmail.com>";
        author = "Mario Blažević";
        homepage = "https://github.com/blamario/grampa/tree/master/grammatical-parsers";
        url = "";
        synopsis = "parsers that can combine into grammars";
        description = "/Gram/matical-/pa/rsers, or Grampa for short, is a library of parser types whose values are meant to be assigned\nto grammar record fields. All parser types support the same set of parser combinators, but have different semantics\nand performance characteristics.";
        buildType = "Simple";
      };
      components = {
        grammatical-parsers = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.monoid-subclasses
            hsPkgs.parsers
            hsPkgs.rank2classes
          ];
        };
        exes = {
          arithmetic = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsers
              hsPkgs.rank2classes
              hsPkgs.grammatical-parsers
              hsPkgs.monoid-subclasses
            ];
          };
        };
        tests = {
          quicktests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.monoid-subclasses
              hsPkgs.parsers
              hsPkgs.rank2classes
              hsPkgs.grammatical-parsers
              hsPkgs.QuickCheck
              hsPkgs.checkers
              hsPkgs.testing-feat
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.rank2classes
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.rank2classes
              hsPkgs.grammatical-parsers
              hsPkgs.monoid-subclasses
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.text
            ];
          };
        };
      };
    }