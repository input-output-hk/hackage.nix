{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-plot";
          version = "0.1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Kai Zhang <kai@kzhang.org>";
        author = "Kai Zhang <kai@kzhang.org>";
        homepage = "https://github.com/kaizhang/haskell-plot";
        url = "";
        synopsis = "A library for generating 2D plots painlessly.";
        description = "Greatly simplify the API of Chart (<http://hackage.haskell.org/package/Chart>).";
        buildType = "Simple";
      };
      components = {
        haskell-plot = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.data-default
            hsPkgs.colour
            hsPkgs.vector
            hsPkgs.math-functions
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.Chart-gtk
          ];
        };
      };
    }