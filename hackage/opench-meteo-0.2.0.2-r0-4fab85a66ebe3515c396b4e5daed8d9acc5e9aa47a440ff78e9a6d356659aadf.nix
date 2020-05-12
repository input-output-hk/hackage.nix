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
      identifier = { name = "opench-meteo"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Roland Senn           ";
      maintainer = "rsx@bluewin.ch";
      author = "Roland Senn";
      homepage = "https://github.com/hansroland/opench";
      url = "";
      synopsis = "A Haskell implementation of the Swiss Meteo Net data API";
      description = "OpenData SMN is a REST API for <http://www.meteoswiss.admin.ch/home/measurement-and-forecasting-systems/land-based-stations/automatisches-messnetz.html SwissMetNet > data.\nThe module Data.Meteo.Swiss contains the main documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }