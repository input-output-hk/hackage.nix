{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opench-meteo"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Roland Senn";
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }