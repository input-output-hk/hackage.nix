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
      identifier = { name = "HSlippyMap"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m@j4.pe";
      author = "Jean-Alexandre Peyroux";
      homepage = "https://github.com/j4/HSlippyMap";
      url = "";
      synopsis = "OpenStreetMap Slippy Map";
      description = "Use OpenStreetMap Slippy Map with Haskell : http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }