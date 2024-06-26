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
      specVersion = "1.0";
      identifier = { name = "xmonad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjanssen@cse.unl.edu";
      author = "Spencer Janssen";
      homepage = "";
      url = "";
      synopsis = "A lightweight X11 window manager.";
      description = "A lightweight X11 window manager.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."X11-extras" or (errorHandler.buildDepError "X11-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }