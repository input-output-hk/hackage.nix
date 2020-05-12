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
      specVersion = "0";
      identifier = { name = "flock"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "";
      url = "";
      synopsis = "Wrapper for flock(2)";
      description = "Simple wrapper around flock(2).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }