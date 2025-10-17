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
      identifier = { name = "gtk-sni-tray"; version = "0.1.9.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/gtk-sni-tray#readme";
      url = "";
      synopsis = "A standalone StatusNotifierItem/AppIndicator tray";
      description = "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gi-cairo" or (errorHandler.buildDepError "gi-cairo"))
          (hsPkgs."gi-cairo-connector" or (errorHandler.buildDepError "gi-cairo-connector"))
          (hsPkgs."gi-cairo-render" or (errorHandler.buildDepError "gi-cairo-render"))
          (hsPkgs."gi-dbusmenugtk3" or (errorHandler.buildDepError "gi-dbusmenugtk3"))
          (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."gtk-strut" or (errorHandler.buildDepError "gtk-strut"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."status-notifier-item" or (errorHandler.buildDepError "status-notifier-item"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
        ];
        buildable = true;
      };
      exes = {
        "gtk-sni-tray-standalone" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."dbus-hslogger" or (errorHandler.buildDepError "dbus-hslogger"))
            (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
            (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
            (hsPkgs."gtk-sni-tray" or (errorHandler.buildDepError "gtk-sni-tray"))
            (hsPkgs."gtk-strut" or (errorHandler.buildDepError "gtk-strut"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."status-notifier-item" or (errorHandler.buildDepError "status-notifier-item"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }