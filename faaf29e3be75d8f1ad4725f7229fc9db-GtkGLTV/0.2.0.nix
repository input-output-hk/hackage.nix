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
      specVersion = "1.2";
      identifier = {
        name = "GtkGLTV";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://code.haskell.org/~conal/code/GtkGLTV";
      synopsis = "OpenGL support for Gtk-based GUIs for Tangible Values";
      description = "GtkGLTV adds OpenGL support to GtkTV, which is a Gtk back-end for\ntangible values.";
      buildType = "Simple";
    };
    components = {
      "GtkGLTV" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.gtk)
          (hsPkgs.GtkTV)
          (hsPkgs.OpenGL)
          (hsPkgs.gtkglext)
          (hsPkgs.bitmap)
          (hsPkgs.bitmap-opengl)
          (hsPkgs.stb-image)
        ];
      };
    };
  }