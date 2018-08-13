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
      specVersion = "0";
      identifier = {
        name = "X11-extras";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Spencer Janssen 2007";
      maintainer = "sjanssen@cse.unl.edu";
      author = "Spencer Janssen";
      homepage = "";
      url = "";
      synopsis = "Missing bindings to the X11 graphics library";
      description = "Missing bindings to the X11 graphics library.\n\nThe binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
      buildType = "Custom";
    };
    components = {
      "X11-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
        ];
        libs = [
          (pkgs."X11")
          (pkgs."Xext")
        ];
      };
    };
  }