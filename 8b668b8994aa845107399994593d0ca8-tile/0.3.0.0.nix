{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tile";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Joe Canero";
        maintainer = "jmc41493@gmail.com";
        author = "Joe Canero";
        homepage = "https://github.com/caneroj1/tile#readme";
        url = "";
        synopsis = "Slippy map tile functionality.";
        description = "Tile/lonlat conversion utilities for slippy maps.";
        buildType = "Simple";
      };
      components = {
        "tile" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "tile-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tile
              hsPkgs.HUnit
            ];
          };
        };
      };
    }