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
      specVersion = "1.14";
      identifier = { name = "hArduino"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2013";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/hArduino";
      url = "";
      synopsis = "Control your Arduino board from Haskell.";
      description = "Control Arduino from Haskell, using the Firmata protocol.\n\nThe hArduino library allows construction of Haskell programs that control\nArduino boards that are running the (freely available) Firmata program. Note\nthat hArduino does /not/ allow you to run arbitrary Haskell code on the\nArduino! It simply allows you to control a board from Haskell, where you\ncan exchange information with the board, send/receive commands from other\nperipherals connected, etc.\n\nA short (4m29s) video of the blinking example: <http://www.youtube.com/watch?v=PPa3im44t2g>\n\nhArduino is work-in-progress. Comments, bug-reports, and patches are welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }