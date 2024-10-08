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
      identifier = { name = "safe-coloured-text-layout"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/safe-coloured-text#readme";
      url = "";
      synopsis = "Safely layout output coloured text";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
        ];
        buildable = true;
      };
    };
  }