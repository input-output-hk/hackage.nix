{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linkedhashmap";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Andrey Basko";
        maintainer = "Andrey Basko <andrey_basko@yahoo.com>";
        author = "Andrey Basko";
        homepage = "https://github.com/abasko/linkedhashmap";
        url = "";
        synopsis = "Persistent LinkedHashMap data structure";
        description = "Haskell implementation of Java LinkedHashMap.\n\nUnderlying HashMap is based on Data.HashMap.Strict.\n\nTwo different implementations are based on Data.Sequence and Data.IntMap.Strict to keep keys in the order of insertion.\n\nCriterion report: <https://cdn.rawgit.com/abasko/linkedhashmap/master/benchmarks/report.html>";
        buildType = "Simple";
      };
      components = {
        linkedhashmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          linkedhashmap-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.tasty
              hsPkgs.mtl
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