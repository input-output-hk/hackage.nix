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
      identifier = { name = "xnobar"; version = "1.0.0.1"; };
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
          (hsPkgs."xnobar".components.sublibs.server or (errorHandler.buildDepError "xnobar:server"))
          (hsPkgs."xnobar".components.sublibs.scroller or (errorHandler.buildDepError "xnobar:scroller"))
        ];
        buildable = true;
      };
      sublibs = {
        "server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."xnobar".components.sublibs.notification or (errorHandler.buildDepError "xnobar:notification"))
            (hsPkgs."xnobar".components.sublibs.positive32 or (errorHandler.buildDepError "xnobar:positive32"))
          ];
          buildable = true;
        };
        "notification" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."xnobar".components.sublibs.positive32 or (errorHandler.buildDepError "xnobar:positive32"))
          ];
          buildable = true;
        };
        "scroller" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
            (hsPkgs."xnobar".components.sublibs.notification or (errorHandler.buildDepError "xnobar:notification"))
            (hsPkgs."xnobar".components.sublibs.positive32 or (errorHandler.buildDepError "xnobar:positive32"))
            (hsPkgs."xnobar".components.sublibs.server or (errorHandler.buildDepError "xnobar:server"))
          ];
          buildable = true;
        };
        "positive32" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      exes = {
        "echo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xnobar".components.sublibs.positive32 or (errorHandler.buildDepError "xnobar:positive32"))
            (hsPkgs."xnobar".components.sublibs.scroller or (errorHandler.buildDepError "xnobar:scroller"))
            (hsPkgs."xnobar".components.sublibs.server or (errorHandler.buildDepError "xnobar:server"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."xnobar".components.sublibs.notification or (errorHandler.buildDepError "xnobar:notification"))
            (hsPkgs."xnobar".components.sublibs.positive32 or (errorHandler.buildDepError "xnobar:positive32"))
            (hsPkgs."xnobar".components.sublibs.scroller or (errorHandler.buildDepError "xnobar:scroller"))
          ];
          buildable = true;
        };
      };
    };
  }