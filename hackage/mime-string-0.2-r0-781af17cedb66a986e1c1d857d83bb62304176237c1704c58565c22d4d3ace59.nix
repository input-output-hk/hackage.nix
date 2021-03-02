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
      identifier = { name = "mime-string"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2005, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "";
      url = "";
      synopsis = "MIME implementation for String's.";
      description = "Implementation of the MIME RFCs 2045-2049.\nRather rough around the edges at the moment.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          ];
        buildable = true;
        };
      };
    }