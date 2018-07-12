{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "di";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2017";
        maintainer = "renλren.zone";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/di";
        url = "";
        synopsis = "Easy, powerful, structured and typeful logging without monad towers.";
        description = "Easy, powerful, structured and typeful logging without monad towers.";
        buildType = "Simple";
      };
      components = {
        "di" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.di
              hsPkgs.stm
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }