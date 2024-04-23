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
      identifier = { name = "mute-unmute"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "http://github.com/Tener/mute-unmute";
      url = "";
      synopsis = "Watches your screensaver and (un)mutes music when you (un)lock the screen.";
      description = "This simple program will watch for the activation of screensaver in via it's DBus API. Current version works for Gnome (tested on: 2.30.0) and KDE (tested on: 4.5.0). Additionally it will only work for ALSA (usage of alsactl command), but this be simple to fix if needed.\nIt could also serve as an example of simple program that works with DBus in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mute-unmute" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network-dbus" or (errorHandler.buildDepError "network-dbus"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hslogger-template" or (errorHandler.buildDepError "hslogger-template"))
          ];
          buildable = true;
        };
      };
    };
  }