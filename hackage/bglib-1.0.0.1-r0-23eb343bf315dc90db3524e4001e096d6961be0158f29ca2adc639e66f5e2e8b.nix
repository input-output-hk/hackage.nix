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
      identifier = { name = "bglib"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "giganetom@gmail.com";
      author = "Tamas Fabian";
      homepage = "https://github.com/netom/bgapi#readme";
      url = "";
      synopsis = "Implementation of the BGAPI serial protocol";
      description = "This library implements Silicon Labs' (formerly BlueGiga)\nserial protocol to communicate with certain Bluetooth and\nWifi products such as the BLED112 USB dongle or the BLE112\nand BLE113 Bluetooth Low Energy modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "bgapitest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bglib" or (errorHandler.buildDepError "bglib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }