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
      identifier = { name = "tianbar"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "koterpillar@gmail.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/tianbar";
      url = "";
      synopsis = "A desktop bar based on WebKit";
      description = "A desktop bar using WebKit for rendering as much as possible.\nBased on Taffybar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "tianbar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gtk-traymanager" or (errorHandler.buildDepError "gtk-traymanager"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-2.0" or (errorHandler.pkgConfDepError "gtk+-2.0"))
            ];
          buildable = true;
          };
        };
      };
    }