{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "levmar-chart";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Roel van Dijk & Bas van Dijk";
        maintainer = "vandijk.roel@gmail.com, v.dijk.bas@gmail.com";
        author = "Roel van Dijk & Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Plots the results of the Levenberg-Marquardt algorithm in a chart";
        description = "This package contains a few functions to quicky visualize the\nfitting of a model function on some data with the\nLevenberg-Marquardt algorithm.\n\nPlots can either be shown in a window or written to a file.";
        buildType = "Simple";
      };
      components = {
        "levmar-chart" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Chart
            hsPkgs.colour
            hsPkgs.data-accessor
            hsPkgs.levmar
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Chart
              hsPkgs.colour
              hsPkgs.data-accessor
              hsPkgs.levmar
              hsPkgs.random
            ];
          };
        };
      };
    }