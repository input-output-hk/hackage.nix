{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ttrie";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Michael Schröder";
        maintainer = "mc.schroeder@gmail.com";
        author = "Michael Schröder";
        homepage = "http://github.com/mcschroeder/ttrie";
        url = "";
        synopsis = "Contention-free STM hash map";
        description = "";
        buildType = "Simple";
      };
      components = {
        ttrie = {
          depends  = [
            hsPkgs.base
            hsPkgs.atomic-primops
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.stm
          ];
        };
        benchmarks = {
          bench1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.stm
              hsPkgs.stm-containers
              hsPkgs.stm-stats
              hsPkgs.text
              hsPkgs.ttrie
              hsPkgs.unordered-containers
              hsPkgs.mwc-random
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.primitive
              hsPkgs.bifunctors
            ];
          };
        };
      };
    }