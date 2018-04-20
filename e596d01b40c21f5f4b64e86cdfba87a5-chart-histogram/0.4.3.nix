{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chart-histogram";
          version = "0.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "";
        url = "";
        synopsis = "Easily render histograms with Chart";
        description = "A library for rendering histograms with the Chart library";
        buildType = "Simple";
      };
      components = {
        chart-histogram = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.lens
            hsPkgs.data-default-class
            hsPkgs.colour
            hsPkgs.Chart
          ];
        };
      };
    }