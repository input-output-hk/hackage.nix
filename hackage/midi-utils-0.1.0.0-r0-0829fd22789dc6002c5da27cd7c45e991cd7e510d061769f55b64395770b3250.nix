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
      identifier = { name = "midi-utils"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Ben Moon";
      maintainer = "guiltydolphin@gmail.com";
      author = "Ben Moon";
      homepage = "https://github.com/GuiltyDolphin/midi-utils";
      url = "";
      synopsis = "Utilities for working with MIDI data";
      description = "Utilities for working with MIDI data";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }