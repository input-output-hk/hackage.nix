{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "hen";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Selectel";
        maintainer = "Fedor Gogolev <knsd@knsd.net>";
        author = "Fedor Gogolev <knsd@knsd.net>\nSergei Lebedev <superbobry@gmail.com>";
        homepage = "https://github.com/selectel/hen";
        url = "";
        synopsis = "Haskell bindings to Xen hypervisor interface";
        description = "Haskell bindings to Xen hypervisor interface";
        buildType = "Simple";
      };
      components = {
        hen = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.uuid
            hsPkgs.bitset
          ];
        };
        tests = {
          hen-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.exceptions
              hsPkgs.uuid
              hsPkgs.bitset
              hsPkgs.hen
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }