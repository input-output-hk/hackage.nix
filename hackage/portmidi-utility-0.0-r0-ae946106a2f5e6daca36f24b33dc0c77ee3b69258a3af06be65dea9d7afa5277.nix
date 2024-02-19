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
      specVersion = "2.2";
      identifier = { name = "portmidi-utility"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "PortMidi utilities";
      description = "Currently provides a command-line tool\nthat lists all MIDI devices accessible by @PortMidi@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "portmidi-list-devices" = {
          depends = [
            (hsPkgs."PortMidi" or (errorHandler.buildDepError "PortMidi"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }