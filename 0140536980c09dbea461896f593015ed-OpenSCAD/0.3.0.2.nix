{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "OpenSCAD";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwm@mired.org";
        author = "Mike Meyer";
        homepage = "https://chiselapp.com/user/mwm/repository/OpenSCAD/";
        url = "";
        synopsis = "ADT wrapper and renderer for OpenSCAD models.";
        description = "An algebraic data type for describing OpenSCAD models,\nfunctions to make building such models easier, and\nfunctions for rendering an ADT into an OpenSCAD program.";
        buildType = "Simple";
      };
      components = {
        OpenSCAD = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.filepath
            hsPkgs.semigroups
            hsPkgs.containers
          ];
        };
        tests = {
          Units = {
            depends  = [
              hsPkgs.base
              hsPkgs.colour
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.tasty-hunit
              hsPkgs.tasty
              hsPkgs.deepseq
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.semigroups
              hsPkgs.containers
            ];
          };
        };
      };
    }