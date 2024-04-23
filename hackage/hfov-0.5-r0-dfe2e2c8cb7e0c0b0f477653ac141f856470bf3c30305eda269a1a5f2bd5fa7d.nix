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
      identifier = { name = "hfov"; version = "0.5"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }