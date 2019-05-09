{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { have-gio = true; build-demos = false; fmode-binary = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "gtk3"; version = "0.14.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts and many others";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Gtk+ 3 graphical user interface library";
      description = "This is the core library of the Gtk2Hs suite of libraries for Haskell\nbased on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit\nfor creating graphical user interfaces.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.glib)
          (hsPkgs.pango)
          (hsPkgs.cairo)
          ] ++ (pkgs.lib).optional (flags.have-gio) (hsPkgs.gio);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32");
        pkgconfig = [ (pkgconfPkgs."gthread-2.0") (pkgconfPkgs."gtk+-3.0") ];
        };
      exes = {
        "gtk2hs-demo-actionMenu" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.text)
            ];
          };
        "gtk2hs-demo-buttonBox" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-carsim" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.cairo)
            ];
          };
        "gtk2hs-demo-progress" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-progressThreadedRTS" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-fastDraw" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.cairo)
            ];
          };
        "gtk2hs-demo-fonts" = { depends = [ (hsPkgs.gtk3) (hsPkgs.base) ]; };
        "gtk2hs-demo-builder" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-helloworld" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-layout" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.cairo)
            (hsPkgs.text)
            ];
          };
        "gtk2hs-demo-menudemo" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.text)
            ];
          };
        "gtk2hs-demo-combodemo" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.transformers)
            ];
          };
        "gtk2hs-demo-notebook" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.text)
            ];
          };
        "gtk2hs-demo-statusIcon" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        "gtk2hs-demo-arabic" = {
          depends = [
            (hsPkgs.gtk3)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.text)
            ];
          };
        "gtk2hs-demo-overlay" = {
          depends = [ (hsPkgs.gtk3) (hsPkgs.base) (hsPkgs.transformers) ];
          };
        };
      };
    }