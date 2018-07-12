{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-concurrency";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Concurrency support for the streaming ecosystem";
        description = "There are two primary higher-level use-cases for this library:\n\n1. Merge multiple @Stream@s together.\n\n2. A conceptual @Stream@-based equivalent to @parMap@ (albeit\nutilising concurrency rather than true parallelism).\n\nHowever, low-level functions are also exposed so you can construct\nyour own methods of concurrently using @Stream@s (and there are also\nnon-@Stream@-specific functions if you wish to use it with other data\ntypes).";
        buildType = "Simple";
      };
      components = {
        "streaming-concurrency" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.stm
            hsPkgs.streaming
            hsPkgs.streaming-with
            hsPkgs.transformers-base
          ];
        };
        tests = {
          "merging" = {
            depends  = [
              hsPkgs.streaming-concurrency
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.streaming
            ];
          };
        };
      };
    }