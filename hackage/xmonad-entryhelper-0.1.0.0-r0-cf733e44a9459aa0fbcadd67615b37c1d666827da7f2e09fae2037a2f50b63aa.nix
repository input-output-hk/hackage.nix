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
      identifier = { name = "xmonad-entryhelper"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Javran Cheng";
      maintainer = "Javran.c@gmail.com";
      author = "Javran Cheng";
      homepage = "https://github.com/Javran/xmonad-entryhelper";
      url = "";
      synopsis = "XMonad config entry point wrapper";
      description = "xmonad-entryhelper makes your compiled XMonad config a standalone binary.\n\nIt simulates the XMonad's argument handling and supports customized compliation.\n\nPlease check\n<https://github.com/Javran/xmonad-entryhelper/blob/master/README.md README>\nfor details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
        ];
        buildable = true;
      };
    };
  }