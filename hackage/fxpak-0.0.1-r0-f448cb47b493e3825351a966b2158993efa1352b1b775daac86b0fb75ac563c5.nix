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
      identifier = { name = "fxpak"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tina Wuest";
      maintainer = "tina@wuest.me";
      author = "Tina Wuest";
      homepage = "https://github.com/wuest/fxpak";
      url = "";
      synopsis = "Interface to the FXPak/FXPak Pro USB interface";
      description = "Wraps Serial interaction with FXPak/FXPak Pro devices";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }