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
    flags = { smaller_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "X11"; version = "1.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003, libraries@haskell.org 2003-2007, Don Stewart 2007-2009, Spencer Janssen 2007-2009, Daniel Wagner 2009-2011.";
      maintainer = "Daniel Wagner <daniel@wagner-home.com>";
      author = "";
      homepage = "https://github.com/haskell-pkg-janitors/X11";
      url = "";
      synopsis = "A binding to the X11 graphics library";
      description = "A Haskell binding to the X11 graphics library.\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = if flags.smaller_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
          (pkgs."Xext" or (errorHandler.sysDepError "Xext"))
        ];
        buildable = true;
      };
    };
  }