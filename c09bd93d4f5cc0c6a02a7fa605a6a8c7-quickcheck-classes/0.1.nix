{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-classes";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
        url = "";
        synopsis = "QuickCheck common typeclasses";
        description = "QuickCheck common typeclasses";
        buildType = "Simple";
      };
      components = {
        "quickcheck-classes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.primitive
            hsPkgs.prim-array
            hsPkgs.aeson
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.quickcheck-classes
              hsPkgs.QuickCheck
              hsPkgs.primitive
              hsPkgs.aeson
            ];
          };
        };
      };
    }