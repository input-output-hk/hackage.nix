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
      identifier = { name = "bluetile"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "A modern tiling window manager with a gentle learning curve";
      description = "Bluetile is a tiling window manager for X based on xmonad. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. Bluetile's focus lies on making the tiling paradigm easily\naccessible to users coming from traditional window managers by drawing\non known conventions and providing both mouse and keyboard access for all features.\nIt also tries to be usable 'out of the box', requiring minimal to\nno configuration in most cases.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bluetile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."xmonad-bluetilebranch" or (errorHandler.buildDepError "xmonad-bluetilebranch"))
            (hsPkgs."xmonad-contrib-bluetilebranch" or (errorHandler.buildDepError "xmonad-contrib-bluetilebranch"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
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