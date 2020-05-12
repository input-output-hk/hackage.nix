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
      specVersion = "1.6";
      identifier = { name = "ecu"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tools for automotive ECU development.";
      description = "These are a collection of tools developed and used by Eaton's\nelectro-hydraulic software engineers.  Most tools is this\ncollection and for interacting with, and analyzing vehicle\nECU data via a CAN bus.\nThese tools require the Kvaser canlib library: http://www.kvaser.com/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tovcd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vcd" or (errorHandler.buildDepError "vcd"))
            ];
          buildable = true;
          };
        "cansend" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."canlib" or (errorHandler.sysDepError "canlib")) ];
          buildable = true;
          };
        "canview" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."canlib" or (errorHandler.sysDepError "canlib")) ];
          buildable = true;
          };
        "probe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            (hsPkgs."vcd" or (errorHandler.buildDepError "vcd"))
            ];
          libs = [ (pkgs."canlib" or (errorHandler.sysDepError "canlib")) ];
          buildable = true;
          };
        };
      };
    }