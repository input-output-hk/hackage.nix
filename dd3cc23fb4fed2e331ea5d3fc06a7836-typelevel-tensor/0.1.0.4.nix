{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "typelevel-tensor";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "muranushi@gmail.com";
        author = "Takayuki Muranushi";
        homepage = "https://github.com/nushio3/typelevel-tensor";
        url = "";
        synopsis = "Tensors whose ranks and dimensions type-inferred and type-checked.";
        description = "A tensor class for Haskell that can type-infer and type-check over tensor ranks and dimensions.\nSee https://github.com/nushio3/typelevel-tensor/tree/master/example for examples.";
        buildType = "Simple";
      };
      components = {
        "typelevel-tensor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.control-monad-failure
            hsPkgs.numeric-prelude
          ];
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.control-monad-failure
              hsPkgs.numeric-prelude
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }