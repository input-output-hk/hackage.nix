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
      identifier = { name = "ibus-hs"; version = "0.0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "ongy@ongy.net";
      author = "Ongy";
      homepage = "https://github.com/Ongy/ibus-hs";
      url = "";
      synopsis = "A simple uncomplete ibus api";
      description = "This is very incomplete. If you need more feel free to contact me.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }