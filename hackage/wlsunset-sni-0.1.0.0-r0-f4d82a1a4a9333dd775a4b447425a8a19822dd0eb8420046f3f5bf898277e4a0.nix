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
      specVersion = "2.4";
      identifier = { name = "wlsunset-sni"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan A. Malison";
      author = "Ivan A. Malison";
      homepage = "";
      url = "";
      synopsis = "StatusNotifierItem tray icon for controlling wlsunset";
      description = "Standalone StatusNotifierItem (SNI) / AppIndicator tray icon for controlling\nthe wlsunset Wayland day/night gamma adjustor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."gi-dbusmenu" or (errorHandler.buildDepError "gi-dbusmenu"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."status-notifier-item" or (errorHandler.buildDepError "status-notifier-item"))
        ];
        buildable = true;
      };
      exes = {
        "wlsunset-sni" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."wlsunset-sni" or (errorHandler.buildDepError "wlsunset-sni"))
          ];
          buildable = true;
        };
      };
    };
  }