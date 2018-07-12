{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lifted-async";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Mitsutoshi Aoe 2012";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/lifted-async";
        url = "";
        synopsis = "Run lifted IO operations asynchronously and wait for their results";
        description = "This package provides IO operations from @async@ package lifted to any\ninstance of 'MonadBase' or 'MonadBaseControl'.";
        buildType = "Simple";
      };
      components = {
        "lifted-async" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers-base
          ];
        };
        tests = {
          "test-lifted-async" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.lifted-async
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }