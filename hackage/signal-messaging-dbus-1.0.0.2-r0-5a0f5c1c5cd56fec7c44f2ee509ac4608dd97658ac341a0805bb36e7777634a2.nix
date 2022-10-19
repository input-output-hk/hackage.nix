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
      identifier = { name = "signal-messaging-dbus"; version = "1.0.0.2"; };
      license = "LicenseRef-AGPL";
      copyright = "2022 Lia Lenckowski";
      maintainer = "lialenck@protonmail.com";
      author = "Lia Lenckowski";
      homepage = "https://codeberg.org/lialenck/signal-messaging-dbus";
      url = "";
      synopsis = "Bindings for signal-cli's DBus interface";
      description = "This library aims provides a way to interact programmatically with the private messenger signal <https://signal.org/>. To use this, you need an instance of [signal-cli] (https://github.com/AsamK/signal-cli) running in daemon mode, with the DBus interface enabled. Support exists for almost the whole api, which should be sufficient for your bot-writing needs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      exes = {
        "signal-dbus-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."signal-messaging-dbus" or (errorHandler.buildDepError "signal-messaging-dbus"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }