{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "async-pool";
          version = "0.8.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "Simon Marlow, John Wiegley";
        homepage = "";
        url = "";
        synopsis = "A modified version of async that supports worker groups and many-to-many task dependencies";
        description = "This library modifies the @async@ package to allow for task pooling and\nmany-to-many dependencies between tasks.";
        buildType = "Simple";
      };
      components = {
        async-pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.fgl
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.fgl
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.time
            ];
          };
        };
      };
    }