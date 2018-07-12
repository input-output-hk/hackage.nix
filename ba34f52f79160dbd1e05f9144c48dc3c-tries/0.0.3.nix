{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lookup = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tries";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Various trie implementations in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "tries" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-trie
            hsPkgs.composition
            hsPkgs.composition-extra
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.keys
            hsPkgs.rose-trees
            hsPkgs.semigroups
            hsPkgs.sets
            hsPkgs.unordered-containers
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-instances
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-trie
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.keys
              hsPkgs.mtl
              hsPkgs.rose-trees
              hsPkgs.sets
              hsPkgs.semigroups
              hsPkgs.tries
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-trie
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.keys
              hsPkgs.mtl
              hsPkgs.rose-trees
              hsPkgs.semigroups
              hsPkgs.sets
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.criterion
            ];
          };
          "bench-lookup" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-trie
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.keys
              hsPkgs.mtl
              hsPkgs.rose-trees
              hsPkgs.semigroups
              hsPkgs.sets
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.criterion
            ];
          };
        };
      };
    }