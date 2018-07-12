{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "tower";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/tower";
        url = "";
        synopsis = "A numeric tower";
        description = "A heirarchy of classes for numbers and algebras that combine them: a numeric tower.\n\nPerformance testing, notes and examples can be found in <https://github.com/tonyday567/tower-dev tower-dev>.\n\nThe tower looks something like:\n\n<<https://tonyday567.github.io/other/field-tower.svg>>\n\nTo use the library:\n\n> import Tower.Prelude\n> print \$ 1 + 1";
        buildType = "Simple";
      };
      components = {
        "tower" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.vector
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.tasty
              hsPkgs.HUnit
              hsPkgs.tasty-hunit
              hsPkgs.smallcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.QuickCheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tower
            ];
          };
        };
      };
    }