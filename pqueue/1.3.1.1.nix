{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pqueue";
          version = "1.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>\nLouis Wasserman <wasserman.louis@gmail.com>";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Reliable, persistent, fast priority queues.";
        description = "A fast, reliable priority queue implementation based on a binomial heap.";
        buildType = "Simple";
      };
      components = {
        pqueue = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }