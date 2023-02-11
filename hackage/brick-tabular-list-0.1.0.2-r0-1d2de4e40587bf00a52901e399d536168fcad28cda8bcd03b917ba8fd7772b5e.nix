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
    flags = { demos = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "brick-tabular-list"; version = "0.1.0.2"; };
      license = "0BSD";
      copyright = "";
      maintainer = "amano.kenji@proton.me";
      author = "amano.kenji";
      homepage = "https://codeberg.org/amano.kenji/brick-tabular-list";
      url = "";
      synopsis = "Tabular list widgets for brick.";
      description = "This package contains two tabular list widgets for brick.\n\n* Grid tabular list\n* Mixed tabular list\n\n== To get started\n\n* Read \"Brick.Widgets.TabularList.Grid\" or \"Brick.Widgets.TabularList.Mixed\".\n* Run demo programs in demos/ directory. To learn more quickly, modify and run demo programs.\n\n== Lens support\n\nIf you want to use lens, I encourage using @OverloadedLabels@ extension with generic-lens or optics-core.\n\nFor zoom, you have to use van Laarhoven lens because brick supports zoom through microlens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "mixed-tabular-list" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-tabular-list" or (errorHandler.buildDepError "brick-tabular-list"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "mixed-tabular-list-vi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-tabular-list" or (errorHandler.buildDepError "brick-tabular-list"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "grid-tabular-list" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-tabular-list" or (errorHandler.buildDepError "brick-tabular-list"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "grid-tabular-list-vi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-tabular-list" or (errorHandler.buildDepError "brick-tabular-list"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      };
    }