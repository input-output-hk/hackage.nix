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
      identifier = { name = "hslogger4j"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2008 John Goerzen";
      maintainer = "bjorn.buckwalter@gmail.com";
      author = "Bjorn Buckwalter";
      homepage = "http://hslogger4j.googlecode.com/";
      url = "";
      synopsis = "DEPRECATED hslogger handlers for log4j's XMLLayout";
      description = "The hslogger4j code has been contributed to hslogger (included in\nversion 1.0.6) and this package has been DEPRECATED.\nThis version contains no code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }