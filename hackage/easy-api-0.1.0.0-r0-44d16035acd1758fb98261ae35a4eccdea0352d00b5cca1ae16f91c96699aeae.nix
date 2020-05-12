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
      identifier = { name = "easy-api"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/sanetracker/easy-api";
      url = "";
      synopsis = "Utility code for building HTTP API bindings more quickly.";
      description = "Utility code for building HTTP API bindings more quickly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ];
        buildable = true;
        };
      };
    }