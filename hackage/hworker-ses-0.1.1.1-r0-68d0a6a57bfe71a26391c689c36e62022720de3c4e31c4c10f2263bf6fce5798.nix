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
      identifier = { name = "hworker-ses"; version = "0.1.1.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "http://github.com/position/hworker-ses";
      url = "";
      synopsis = "Library for sending email with Amazon's SES and hworker";
      description = "See README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hworker" or (errorHandler.buildDepError "hworker"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-ses" or (errorHandler.buildDepError "amazonka-ses"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }