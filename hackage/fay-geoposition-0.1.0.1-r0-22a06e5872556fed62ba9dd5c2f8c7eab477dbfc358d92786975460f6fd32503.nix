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
      identifier = { name = "fay-geoposition"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Altera Praxis Pty Ltd";
      maintainer = "eocallaghan@alterapraxis.com";
      author = "Edward O'Callaghan";
      homepage = "https://github.com/victoredwardocallaghan/fay-geoposition";
      url = "";
      synopsis = "W3C compliant implementation of GeoPosition API.";
      description = "W3C compliant implementation of GeoPosition API within the Fay Monad";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fay-base" or (errorHandler.buildDepError "fay-base"))
          (hsPkgs."fay-text" or (errorHandler.buildDepError "fay-text"))
          ];
        buildable = true;
        };
      };
    }