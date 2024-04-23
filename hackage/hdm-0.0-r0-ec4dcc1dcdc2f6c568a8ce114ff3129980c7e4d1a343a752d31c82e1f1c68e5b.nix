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
      specVersion = "1.4";
      identifier = { name = "hdm"; version = "0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs & Cheater__";
      homepage = "";
      url = "";
      synopsis = "a small display manager.";
      description = "A small display manager which loads from shell and just provides a text based menu for selecting the xinitrc file of your choice.  I created it for use with xmonad, where I often wish to start up gnome or xfce4 as well.  Since this uses startx, it handles multiple xsessions seamlessly.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hdm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }