{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "X11";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003, libraries@haskell.org 2003-2007, Don Stewart 2007-2009, Spencer Janssen 2007-2009, Daniel Wagner 2009-2011.";
      maintainer = "Daniel Wagner <daniel@wagner-home.com>";
      author = "";
      homepage = "https://github.com/xmonad/X11";
      url = "";
      synopsis = "A binding to the X11 graphics library";
      description = "A Haskell binding to the X11 graphics library.\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
      buildType = "Configure";
    };
    components = {
      "X11" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
        ];
        libs = [
          (pkgs."X11")
          (pkgs."Xrandr")
          (pkgs."Xext")
        ];
      };
    };
  }