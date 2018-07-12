{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-store";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.casanueva@plowtech.net";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Format to store data using the binary transform.";
        description = "...";
        buildType = "Simple";
      };
      components = {
        "binary-store" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary-list
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.reinterpret-cast
            hsPkgs.binary-transform
            hsPkgs.bzlib
            hsPkgs.deepseq
          ];
        };
        tests = {
          "binary-store-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.binary-list
              hsPkgs.binary-store
            ];
          };
        };
      };
    }