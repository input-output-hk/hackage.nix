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
      specVersion = "1.12";
      identifier = { name = "safe-coloured-text"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/safe-coloured-text#readme";
      url = "";
      synopsis = "Safely output coloured text";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-bytestring" or (errorHandler.buildDepError "validity-bytestring"))
          (hsPkgs."validity-text" or (errorHandler.buildDepError "validity-text"))
          ];
        buildable = true;
        };
      };
    }