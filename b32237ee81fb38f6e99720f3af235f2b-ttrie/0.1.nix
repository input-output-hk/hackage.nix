{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ttrie";
          version = "0.1";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Michael Schröder";
        maintainer = "mc.schroeder@gmail.com";
        author = "Michael Schröder";
        homepage = "http://github.com/mcschroeder/ttrie";
        url = "";
        synopsis = "Contention-free STM hash map";
        description = "A contention-free STM hash map.\n\\\"Contention-free\\\" means that the map will never cause spurious conflicts.\nA transaction operating on the map will only ever have to retry if\nanother transaction is operating on the same key at the same time.\n\nThis is an implementation of the /transactional trie/,\nwhich is basically a /lock-free concurrent hash trie/ lifted into STM.\nFor a detailed discussion, including an evaluation of its performance,\nsee Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.";
        buildType = "Simple";
      };
      components = {
        "ttrie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.atomic-primops
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.stm
          ];
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.bifunctors
              hsPkgs.containers
              hsPkgs.criterion-plus
              hsPkgs.deepseq
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.stm-stats
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.ttrie
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }