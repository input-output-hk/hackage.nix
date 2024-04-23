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
      specVersion = "1.4";
      identifier = { name = "tidal-serial"; version = "0.8"; };
      license = "GPL-3.0-only";
      copyright = "(c) Lennart Melzer and other contributors, 2016";
      maintainer = "Lennart <lennart@melzer.it>, Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com> ";
      author = "Lennart Melzer";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Serial support for tidal";
      description = "Serial stream for Tidal";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }