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
      identifier = { name = "gpolyline"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Finn Espen Gundersen <finn@gundersen.net>";
      maintainer = "Finn Espen Gundersen <finn@gundersen.net>";
      author = "Finn Espen Gundersen <finn@gundersen.net>";
      homepage = "https://github.com/fegu/gpolyline";
      url = "";
      synopsis = "Pure module for encoding/decoding Google Polyline";
      description = "Pure module for encoding/decoding Google Polyline";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }