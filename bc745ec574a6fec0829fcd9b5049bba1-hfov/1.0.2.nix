{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hfov";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nornagon@nornagon.net";
        author = "Jeremy Apthorp";
        homepage = "https://github.com/nornagon/hfov";
        url = "";
        synopsis = "Field-of-view calculation for low-resolution 2D raster grids.";
        description = "A Haskell binding to a Field of View calculation library\nwritten by Greg McIntyre (blue_puyo) in C.";
        buildType = "Simple";
      };
      components = {
        hfov = {
          depends  = [ hsPkgs.base ];
        };
      };
    }