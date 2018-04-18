{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hashtable-benchmark";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Hongchang Wu";
        maintainer = "wuhc85@gmail.com";
        author = "Hongchang Wu";
        homepage = "https://github.com/hongchangwu/hashtable-benchmark#readme";
        url = "";
        synopsis = "Benchmark of hash table implementations";
        description = "This package provides benchmark of several popular\nimplementations of hash table like containers.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hashtable-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.hashtables
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }