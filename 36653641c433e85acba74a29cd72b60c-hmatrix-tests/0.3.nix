{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix-tests";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Tests for hmatrix";
        description = "Tests for hmatrix";
        buildType = "Simple";
      };
      components = {
        hmatrix-tests = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.random
          ];
        };
        tests = {
          basic = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix-tests
            ];
          };
        };
      };
    }