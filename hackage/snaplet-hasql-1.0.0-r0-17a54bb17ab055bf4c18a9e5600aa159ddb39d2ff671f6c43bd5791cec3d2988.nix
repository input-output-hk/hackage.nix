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
      identifier = { name = "snaplet-hasql"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/snaplet-hasql";
      url = "";
      synopsis = "A Hasql snaplet";
      description = "A hasql snaplet, including an auth backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-backend" or (errorHandler.buildDepError "hasql-backend"))
          (hsPkgs."hasql-postgres" or (errorHandler.buildDepError "hasql-postgres"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }