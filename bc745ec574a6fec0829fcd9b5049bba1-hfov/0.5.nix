{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "hfov";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nornagon@nornagon.net";
      author = "Jeremy Apthorp <nornagon@nornagon.net>, Greg McIntyre";
      homepage = "";
      url = "";
      synopsis = "Field-of-view calculation for low-resolution 2D raster grids.";
      description = "A Haskell binding to a Field of View calculation library\nwritten by Greg McIntyre (blue_puyo) in C.";
      buildType = "Simple";
    };
    components = {
      "hfov" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }