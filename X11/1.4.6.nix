{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "X11";
          version = "1.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "Alastair Reid, 1999-2003, libraries@haskell.org 2003-2007, Don Stewart 2007-2009.";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "";
        homepage = "http://darcs.haskell.org/X11";
        url = "";
        synopsis = "A binding to the X11 graphics library";
        description = "A Haskell binding to the X11 graphics library.\n\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
        buildType = "Configure";
      };
      components = {
        X11 = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.X11 ];
        };
      };
    }