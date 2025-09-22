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
      specVersion = "3.4";
      identifier = { name = "xnobar"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Enrico Maria De Angelis";
      author = "";
      homepage = "https://codeberg.org/Aster89/xnobar";
      url = "";
      synopsis = "Text-based notification server for XMobar";
      description = "Text-based notification server for XMobar. It also exposes just the back-end, to be used as a library, as shown in exe/Echo.hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          (hsPkgs."xnobar".components.sublibs.Server or (errorHandler.buildDepError "xnobar:Server"))
          (hsPkgs."xnobar".components.sublibs.Scroller or (errorHandler.buildDepError "xnobar:Scroller"))
        ];
        buildable = true;
      };
      sublibs = {
        "Server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."xnobar".components.sublibs.Notification or (errorHandler.buildDepError "xnobar:Notification"))
            (hsPkgs."xnobar".components.sublibs.Positive32 or (errorHandler.buildDepError "xnobar:Positive32"))
          ];
          buildable = true;
        };
        "Notification" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."xnobar".components.sublibs.Positive32 or (errorHandler.buildDepError "xnobar:Positive32"))
          ];
          buildable = true;
        };
        "Scroller" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
            (hsPkgs."xnobar".components.sublibs.Notification or (errorHandler.buildDepError "xnobar:Notification"))
            (hsPkgs."xnobar".components.sublibs.Positive32 or (errorHandler.buildDepError "xnobar:Positive32"))
            (hsPkgs."xnobar".components.sublibs.Server or (errorHandler.buildDepError "xnobar:Server"))
          ];
          buildable = true;
        };
        "Positive32" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      exes = {
        "Echo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xnobar".components.sublibs.Server or (errorHandler.buildDepError "xnobar:Server"))
            (hsPkgs."xnobar".components.sublibs.Scroller or (errorHandler.buildDepError "xnobar:Scroller"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          ];
          buildable = true;
        };
      };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."xnobar".components.sublibs.Notification or (errorHandler.buildDepError "xnobar:Notification"))
            (hsPkgs."xnobar".components.sublibs.Positive32 or (errorHandler.buildDepError "xnobar:Positive32"))
            (hsPkgs."xnobar".components.sublibs.Scroller or (errorHandler.buildDepError "xnobar:Scroller"))
          ];
          buildable = true;
        };
      };
    };
  }