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
      identifier = { name = "nc-indicators"; version = "0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/nc-indicators";
      url = "";
      synopsis = "CPU load and memory usage indicators for i3bar";
      description = "@nc-indicators@ displays a CPU load and memory usage mini-graphs in\nyour @i3bar@, much like Gnome's @indicator-multiload@ applet.\n\nTo use @nc-indicators@ simply @exec@ it on startup:\n\n@\nexec --no-startup-id nc-indicators\n@\n\nYou can turn off either indicator and change the update interval, eg.:\n\n@\nexec --no-startup-id nc-indicators --show_mem=0 --update_interval=300\n@\n\n@nc-indicators@ uses the standard system tray icon protocol, so it\ncan be used with any system tray-like application, not just\n@i3bar@. But it was originally created to be used with @i3bar@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nc-indicators" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."hflags" or (errorHandler.buildDepError "hflags"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }