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
      specVersion = "1.4";
      identifier = { name = "JackMiniMix"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick (at) gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=jackminimix";
      url = "";
      synopsis = "control JackMiniMix";
      description = "This is a module to control JackMiniMix, a GPL mixer for the Jack Audio Connection Kit using OpenSoundControl (OSC).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
        ];
        buildable = true;
      };
    };
  }