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
        name = "AERN-RnToRm-Plot";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://www-users.aston.ac.uk/~konecnym/DISCERN";
      url = "";
      synopsis = "GL plotting of polynomial function enclosures (PFEs)";
      description = "This library extends AERN-RnToRm with support for plotting unary function enclosures\nin any GL context and a Gtk window for inspecting these enclosures.\n\nSimple examples of usage can be found in module @Demo.hs@ in folder @examples@.";
      buildType = "Simple";
    };
    components = {
      "AERN-RnToRm-Plot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.AERN-Real)
          (hsPkgs.AERN-Real)
          (hsPkgs.AERN-RnToRm)
          (hsPkgs.AERN-RnToRm)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.gtk)
          (hsPkgs.gtkglext)
          (hsPkgs.glib)
          (hsPkgs.glade)
          (hsPkgs.gtk)
          (hsPkgs.gtkglext)
          (hsPkgs.glib)
          (hsPkgs.glade)
        ];
      };
    };
  }