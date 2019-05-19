{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { have-quartz-gtk = false; use-deprecated = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "gtkglext"; version = "0.13.1.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GTK+ OpenGL Extension";
      description = "GtkGLExt provides the GDK objects to support OpenGL rendering in GTK+,\nand GtkWidget API add-ons to make GTK+ widgets OpenGL-capable.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.gtk2hs-buildtools or (pkgs.buildPackages.gtk2hs-buildtools))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.glib) (hsPkgs.pango) (hsPkgs.gtk) ];
        pkgconfig = [ (pkgconfPkgs."gtkglext-1.0") ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
          ];
        };
      };
    }