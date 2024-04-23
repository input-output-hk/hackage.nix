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
      identifier = { name = "3dmodels"; version = "0.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2014 capsjac";
      maintainer = "capsjac <capsjac at gmail dot com>";
      author = "capsjac <capsjac at gmail dot com>";
      homepage = "https://github.com/capsjac/3dmodels";
      url = "";
      synopsis = "3D model parsers";
      description = "3D model parsers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."packer" or (errorHandler.buildDepError "packer"))
        ];
        buildable = true;
      };
    };
  }