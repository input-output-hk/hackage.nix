{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "data-sword";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/data-sword";
        url = "";
        synopsis = "Shorter binary words";
        description = "This package provides Template Haskell utilities for declaring short binary\nword data types built on top of longer binary word data types. Signed and\nunsigned 2, 3, 4, 5, 6, 7, 24, and 48-bit types are predefined.";
        buildType = "Simple";
      };
      components = {
        "data-sword" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.hashable
            hsPkgs.data-bword
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.data-sword
            ];
          };
        };
      };
    }