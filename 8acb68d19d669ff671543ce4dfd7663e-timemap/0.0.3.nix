{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threadscope = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timemap";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A mutable hashmap, implicitly indexed by UTCTime.";
        description = "";
        buildType = "Simple";
      };
      components = {
        timemap = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.focus
            hsPkgs.hashable
            hsPkgs.list-t
            hsPkgs.stm
            hsPkgs.stm-containers
            hsPkgs.time
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          bench2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.criterion
            ];
          };
        };
      };
    }