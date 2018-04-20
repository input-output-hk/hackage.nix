{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timemap";
          version = "0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 Athan Clark";
        maintainer = "athan.clark@localcooking.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/timemap#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/githubuser/timemap#readme>";
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
        tests = {
          timemap-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.quickcheck-instances
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.time
              hsPkgs.timemap
              hsPkgs.unordered-containers
            ];
          };
        };
        benchmarks = {
          timemap-bench1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.time
              hsPkgs.timemap
              hsPkgs.unordered-containers
            ];
          };
          timemap-bench2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.focus
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.time
              hsPkgs.timemap
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }