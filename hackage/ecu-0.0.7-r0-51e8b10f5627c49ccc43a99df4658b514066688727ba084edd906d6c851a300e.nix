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
      identifier = { name = "ecu"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tools for automotive ECU development.";
      description = "A collection of tools developed and used by Eaton's\nelectro-hydraulic software engineers.  Most of these tools\nare for interacting with vehicle electronic\ncontrol units (ECUs) via a CAN bus.\nThis package requires the Kvaser canlib library: http://www.kvaser.com/";
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
        "decomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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
        "ccp" = {
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
        "toesb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            ];
          buildable = true;
          };
        "parsedbc" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "commit" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "git2cc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }