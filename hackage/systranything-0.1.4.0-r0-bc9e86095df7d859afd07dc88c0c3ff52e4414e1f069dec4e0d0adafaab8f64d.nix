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
      identifier = { name = "systranything"; version = "0.1.4.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."gi-ayatana-appindicator3" or (errorHandler.buildDepError "gi-ayatana-appindicator3"))
          (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
        ];
        buildable = true;
      };
      exes = {
        "systranything" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
            (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."systranything" or (errorHandler.buildDepError "systranything"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."systranything" or (errorHandler.buildDepError "systranything"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-autocollect" or (errorHandler.buildDepError "tasty-autocollect"))
            (hsPkgs."tasty-hunit-compat" or (errorHandler.buildDepError "tasty-hunit-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-autocollect.components.exes.tasty-autocollect or (pkgs.pkgsBuildBuild.tasty-autocollect or (errorHandler.buildToolDepError "tasty-autocollect:tasty-autocollect")))
          ];
          buildable = true;
        };
      };
    };
  }