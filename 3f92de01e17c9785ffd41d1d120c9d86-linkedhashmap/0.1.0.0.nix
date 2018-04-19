{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linkedhashmap";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Andrey Basko";
        maintainer = "Andrey Basko <andrey_basko@yahoo.com>";
        author = "Andrey Basko";
        homepage = "https://github.com/abasko/linkedhashmap";
        url = "";
        synopsis = "Persistent LinkedHashMap data structure";
        description = "Haskell implementation of Java (Concurrent)LinkedHashMap.\n\nUnderlying HashMap is based on Data.HashMap.Strict.\n\nTwo different implementations are based on Data.Sequence and Data.IntMap.Strict to keep keys in the order of insertion.\n\nCriterion report: <https://cdn.rawgit.com/abasko/linkedhashmap/master/benchmarks/report.html>";
        buildType = "Simple";
      };
      components = {
        linkedhashmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          linkedhashmap-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.tasty
              hsPkgs.deepseq
              hsPkgs.tasty-hunit
              hsPkgs.unordered-containers
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.unordered-containers
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }