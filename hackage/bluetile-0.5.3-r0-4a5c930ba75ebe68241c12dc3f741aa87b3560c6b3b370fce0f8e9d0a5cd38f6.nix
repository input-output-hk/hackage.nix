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
      identifier = { name = "bluetile"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "http://www.bluetile.org/";
      url = "";
      synopsis = "full-featured tiling for the GNOME desktop environment";
      description = "Bluetile is a tiling window manager for Linux, designed to integrate\nwith the GNOME desktop environment. It provides both a traditional,\nstacking layout mode as well as tiling layouts where windows are\narranged to use the entire screen without overlapping. Bluetile tries\nto make the tiling paradigm easily accessible to users coming from\ntraditional window managers by drawing on known conventions and\nproviding both mouse and keyboard access for all features.";
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
            (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))
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
          pkgconfig = [
            (pkgconfPkgs."gtk+-2.0" or (errorHandler.pkgConfDepError "gtk+-2.0"))
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