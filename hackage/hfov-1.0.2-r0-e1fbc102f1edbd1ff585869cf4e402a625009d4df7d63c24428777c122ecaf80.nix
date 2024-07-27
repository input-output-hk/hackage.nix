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
      specVersion = "1.8";
      identifier = { name = "hfov"; version = "1.0.2"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }