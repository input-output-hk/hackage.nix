{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Chart";
          version = "1.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2010";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "https://github.com/timbod7/haskell-chart/wiki";
        url = "";
        synopsis = "A library for generating 2D Charts and Plots";
        description = "A library for generating 2D Charts and Plots, with backends provided by\nCairo (<http://hackage.haskell.org/package/Chart-cairo>)\nand\nDiagrams (<http://hackage.haskell.org/package/Chart-diagrams>).";
        buildType = "Simple";
      };
      components = {
        Chart = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.lens
            hsPkgs.colour
            hsPkgs.data-default-class
            hsPkgs.operational
          ];
        };
      };
    }