{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "x11-xim";
        version = "0.0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2010 Yoshikuni Jujo";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "";
      url = "";
      synopsis = "A binding to the xim of X11 graphics library";
      description = "A binding to the xim of X11 graphics library";
      buildType = "Simple";
    };
    components = {
      "x11-xim" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }