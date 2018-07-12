{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timeless-tutorials";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "rongcuid@outlook.com";
        author = "Rongcui Dong";
        homepage = "https://github.com/carldong/timeless-tutorials#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "timeless-tutorials" = {
          depends  = [
            hsPkgs.base
            hsPkgs.timeless
          ];
        };
        exes = {
          "Tutorial1" = {
            depends  = [
              hsPkgs.base
              hsPkgs.timeless-tutorials
            ];
          };
        };
      };
    }