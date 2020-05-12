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
      specVersion = "1.2";
      identifier = { name = "bluetile"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "http://www.bluetile.org/";
      url = "";
      synopsis = "A modern tiling window manager with a gentle learning curve";
      description = "Bluetile is a tiling window manager for X based on xmonad. Windows are\narranged to use the entire screen without overlapping. Bluetile's focus lies\non making the tiling paradigm easily accessible to users coming from\ntraditional window managers by drawing on known conventions and providing\nboth mouse and keyboard access for all features. It also tries to be usable\n'out of the box', requiring minimal to no configuration in most cases.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "bluetile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
            ];
          buildable = true;
          };
        "bluetiledock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            ];
          buildable = true;
          };
        "bluetilemockwin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            ];
          buildable = true;
          };
        "bluetilegreet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      };
    }