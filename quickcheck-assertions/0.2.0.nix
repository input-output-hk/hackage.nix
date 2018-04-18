{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "quickcheck-assertions";
          version = "0.2.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uymanov";
        homepage = "https://github.com/s9gf4ult/quickcheck-assertions";
        url = "";
        synopsis = "HUnit like assertions for QuickCheck";
        description = "Library with convenient assertions for QuickCheck properties like in HUnit";
        buildType = "Simple";
      };
      components = {
        quickcheck-assertions = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.ieee754
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.quickcheck-assertions
              hsPkgs.ieee754
            ];
          };
        };
      };
    }