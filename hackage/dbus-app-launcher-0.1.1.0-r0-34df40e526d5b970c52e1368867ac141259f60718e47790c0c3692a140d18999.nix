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
      specVersion = "1.12";
      identifier = { name = "dbus-app-launcher"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2024 Daniël van de Giessen";
      maintainer = "daniel@dvdgiessen.nl";
      author = "Daniël van de Giessen";
      homepage = "https://github.com/DvdGiessen/dbus-app-launcher#readme";
      url = "";
      synopsis = "Simple app launcher for D-Bus";
      description = "See the README at <https://github.com/DvdGiessen/dbus-app-launcher>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dbus-app-launcher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."shellwords" or (errorHandler.buildDepError "shellwords"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }