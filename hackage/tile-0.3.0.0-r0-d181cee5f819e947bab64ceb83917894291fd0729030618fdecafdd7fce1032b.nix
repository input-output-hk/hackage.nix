{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tile"; version = "0.3.0.0"; };
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
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "tile-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.tile) (hsPkgs.HUnit) ];
          };
        };
      };
    }