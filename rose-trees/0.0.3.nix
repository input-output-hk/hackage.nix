{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rose-trees";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A collection of rose tree structures.";
        description = "";
        buildType = "Simple";
      };
      components = {
        rose-trees = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.sets
            hsPkgs.witherable
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-instances
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.rose-trees
              hsPkgs.containers
              hsPkgs.semigroups
              hsPkgs.semigroupoids
              hsPkgs.sets
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.witherable
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.rose-trees
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.semigroups
              hsPkgs.semigroupoids
              hsPkgs.sets
              hsPkgs.witherable
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.criterion
            ];
          };
        };
      };
    }