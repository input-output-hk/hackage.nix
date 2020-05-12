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
      specVersion = "1.6";
      identifier = { name = "x11-xim"; version = "0.0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2010 Yoshikuni Jujo";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/x11-xim_haskell/wiki/";
      url = "";
      synopsis = "A binding to the xim of X11 graphics library";
      description = "A binding to the xim of X11 graphics library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }