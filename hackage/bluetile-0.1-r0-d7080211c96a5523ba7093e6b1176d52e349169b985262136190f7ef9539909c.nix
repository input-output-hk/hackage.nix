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
      identifier = { name = "bluetile"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "A modern tiling window manager with a gentle learning curve";
      description = "Bluetile is a tiling window manager for X based on xmonad. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. Bluetile's focus lies on making the tiling paradigm easily\naccessible for users coming from traditional window managers by drawing\non known conventions and making all features available using the mouse.\nIt also tries to be usable 'out of the box', making configuration unnecessary.";
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
            (hsPkgs."xmonad-bluetilebranch" or (errorHandler.buildDepError "xmonad-bluetilebranch"))
            (hsPkgs."xmonad-contrib-bluetilebranch" or (errorHandler.buildDepError "xmonad-contrib-bluetilebranch"))
            (hsPkgs."xmonad-contrib-bluetilebranch" or (errorHandler.buildDepError "xmonad-contrib-bluetilebranch"))
          ];
          buildable = true;
        };
      };
    };
  }