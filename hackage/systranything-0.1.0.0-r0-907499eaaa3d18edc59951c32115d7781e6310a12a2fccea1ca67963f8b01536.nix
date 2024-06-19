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
      identifier = { name = "systranything"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeancharles.quillet@gmail.com";
      author = "Jean-Charles Quillet";
      homepage = "https://github.com/jecaro/systranything";
      url = "";
      synopsis = "Let you put anything in the system tray";
      description = "`systranything` creates a system tray menu based on a YAML file. The YAML\ncontains the specification of the menu items with shell commands to execute\nwhen the items are clicked.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "systranything" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."gi-ayatana-appindicator3" or (errorHandler.buildDepError "gi-ayatana-appindicator3"))
            (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
            (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
            (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }