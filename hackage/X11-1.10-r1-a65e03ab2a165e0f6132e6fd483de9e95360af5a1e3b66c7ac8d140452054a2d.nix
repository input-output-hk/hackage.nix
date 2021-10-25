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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "X11"; version = "1.10"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003, libraries@haskell.org 2003-2007,\nDon Stewart 2007-2009, Spencer Janssen 2007-2009, Daniel Wagner 2009-2011.";
      maintainer = "Daniel Wagner <daniel@wagner-home.com>";
      author = "";
      homepage = "https://github.com/xmonad/X11";
      url = "";
      synopsis = "A binding to the X11 graphics library";
      description = "A Haskell binding to the X11 graphics library. The binding is a direct\ntranslation of the C binding; for documentation of these calls, refer\nto \\\"The Xlib Programming Manual\\\", available online at\n<http://tronche.com/gui/x/xlib/>.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        libs = [
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
          (pkgs."Xext" or (errorHandler.sysDepError "Xext"))
          ];
        buildable = true;
        };
      };
    }