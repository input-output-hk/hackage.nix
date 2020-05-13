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
      identifier = { name = "HSlippyMap"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "al@px.io";
      author = "Alexandre Peyroux";
      homepage = "https://github.com/41px/HSlippyMap";
      url = "";
      synopsis = "OpenStreetMap (OSM) Slippy Map";
      description = "OpenStreetMap (OSM) Slippy Map is, in general, a term referring to modern web maps which let you zoom and pan around (the map slips around when you drag the mouse). - http://wiki.openstreetmap.org/wiki/Slippy_Map";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }