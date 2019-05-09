{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { deprecated = true; have-gio = true; have-quartz-gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gtk"; version = "0.12.4"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts and many others";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Gtk+ graphical user interface library.";
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
          (hsPkgs.glib)
          (hsPkgs.pango)
          (hsPkgs.cairo)
          ] ++ (pkgs.lib).optional (flags.have-gio) (hsPkgs.gio);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32");
        pkgconfig = [ (pkgconfPkgs."gthread-2.0") (pkgconfPkgs."gtk+-2.0") ];
        };
      };
    }