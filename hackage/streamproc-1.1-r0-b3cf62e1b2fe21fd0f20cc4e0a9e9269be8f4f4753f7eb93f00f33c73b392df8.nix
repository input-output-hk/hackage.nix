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
      identifier = { name = "streamproc"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/streamproc/";
      url = "";
      synopsis = "Stream Processer Arrow";
      description = "Stream Processer Arrow";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }