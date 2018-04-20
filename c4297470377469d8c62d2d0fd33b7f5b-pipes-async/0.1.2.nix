{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-async";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015, John Wiegley";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/pipes-async";
        url = "";
        synopsis = "A higher-level interface to using concurrency with pipes";
        description = "Provides combinators like '>&>' for easily adding concurrency.";
        buildType = "Simple";
      };
      components = {
        pipes-async = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.stm
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.pipes
            hsPkgs.pipes-safe
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.lifted-async
              hsPkgs.lifted-base
              hsPkgs.stm
              hsPkgs.monad-control
              hsPkgs.transformers-base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.hspec
              hsPkgs.pipes-async
            ];
          };
        };
      };
    }