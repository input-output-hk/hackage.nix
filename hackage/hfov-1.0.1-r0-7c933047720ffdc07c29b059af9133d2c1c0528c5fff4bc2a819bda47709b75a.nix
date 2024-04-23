{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "hfov"; version = "1.0.1"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }