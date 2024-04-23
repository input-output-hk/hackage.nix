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
      specVersion = "3.0";
      identifier = { name = "systemd-ntfy"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "me@mpardalos.com";
      author = "Michalis Pardalos";
      homepage = "";
      url = "";
      synopsis = "Send notifications for systemd units to ntfy.sh";
      description = "systemd-ntfy allows you to monitor a set of systemd services an send a\nnotification to ntfy.sh whenever their status changes. Run `systemd-ntfy --help`\nfor a full list of options.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "systemd-ntfy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."dbus-th" or (errorHandler.buildDepError "dbus-th"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }