{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      new-exception = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pango";
        version = "0.12.3";
      };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Pango text rendering engine.";
      description = "This package provides a wrapper around the Pango C library that\nallows high-quality rendering of Unicode text. It can be used\neither with Cairo to output text in PDF, PS or other\ndocuments or with Gtk+ to display text on-screen.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.cairo)
        ] ++ [ (hsPkgs.base) ];
        pkgconfig = [
          (pkgconfPkgs.cairo)
          (pkgconfPkgs.pangocairo)
        ] ++ [ (pkgconfPkgs.pango) ];
      };
    };
  }