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
      identifier = { name = "bluetile"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "http://www.bluetile.org/";
      url = "";
      synopsis = "full-featured tiling for the GNOME desktop environment";
      description = "Bluetile is a tiling window manager designed to integrate with the\nGNOME desktop environment. It provides both a traditional, stacking\nlayout mode as well as tiling layouts where windows are arranged to\nuse the entire screen without overlapping. Bluetile tries to make the\ntiling paradigm easily accessible to users coming from traditional\nwindow managers by drawing on known conventions and providing both\nmouse and keyboard access for all features.";
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
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
            ];
          buildable = true;
          };
        "gnome-bluetile-session" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
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