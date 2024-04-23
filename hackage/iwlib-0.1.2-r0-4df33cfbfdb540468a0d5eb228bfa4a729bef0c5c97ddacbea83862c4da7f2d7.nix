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
      specVersion = "1.10";
      identifier = { name = "iwlib"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose Antonio Ortega Ruiz <jao@gnu.org>";
      author = "Jose Antonio Ortega Ruiz <jao@gnu.org>";
      homepage = "https://codeberg.org/xmobar/iwlib";
      url = "";
      synopsis = "Bindings for the iw C library";
      description = "A binding to the iw library for getting info about the current WiFi connection.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."iw" or (errorHandler.sysDepError "iw")) ];
        buildable = true;
      };
    };
  }