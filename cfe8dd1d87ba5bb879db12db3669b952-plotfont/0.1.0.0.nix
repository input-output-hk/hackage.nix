{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plotfont";
          version = "0.1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ex-hackage@mjoldfield.com";
        author = "M J Oldfield";
        homepage = "";
        url = "";
        synopsis = "Plotter-like fonts i.e. a series of straight lines which make letter shapes.";
        description = "Crude fonts for XY plotting";
        buildType = "Simple";
      };
      components = {
        "plotfont" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.plotfont
            ];
          };
        };
      };
    }