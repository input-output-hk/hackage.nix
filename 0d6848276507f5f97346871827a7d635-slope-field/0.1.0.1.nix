{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "slope-field";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Mahdi Dibaiee";
        maintainer = "mdibaiee@aol.com";
        author = "Mahdi Dibaiee";
        homepage = "https://github.com/mdibaiee/slope-field";
        url = "";
        synopsis = "Visualize mathematical function's slope fields";
        description = "Visualize mathematical function's slope fields";
        buildType = "Simple";
      };
      components = {
        slope-field = {
          depends  = [
            hsPkgs.base
            hsPkgs.mathexpr
            hsPkgs.data-default-class
          ];
        };
        exes = {
          slope-field = {
            depends  = [
              hsPkgs.base
              hsPkgs.slope-field
              hsPkgs.Chart
              hsPkgs.Chart-cairo
              hsPkgs.lens
              hsPkgs.data-default-class
              hsPkgs.colour
            ];
          };
        };
      };
    }