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
      specVersion = "0";
      identifier = { name = "X11-xshape"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Ewan Higgs, 2008, libraries@haskell.org 2008";
      maintainer = "Ewan Higgs <ewan_higgs@yahoo.co.uk>";
      author = "";
      homepage = "http://darcs.haskell.org/X11-xshape";
      url = "";
      synopsis = "A binding to the Xshape X11 extension library";
      description = "A Haskell binding to the Xshape X11 extention graphics library.\n\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          ];
        buildable = true;
        };
      };
    }