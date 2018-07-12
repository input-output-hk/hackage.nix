{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-casing";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrewrademacher@gmail.com";
        author = "Andrew Rademacher";
        homepage = "";
        url = "";
        synopsis = "Tools to change the formatting of field names in Aeson\ninstances.";
        description = "Tools to change the formatting of field names in Aeson\ninstances. This includes CamelCasing, Pascal Casing and\nSnake Casing.";
        buildType = "Simple";
      };
      components = {
        "aeson-casing" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
          ];
        };
        tests = {
          "casing" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-th
              hsPkgs.aeson
              hsPkgs.aeson-casing
            ];
          };
        };
      };
    }