{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0";
      identifier = { name = "gtk3-mac-integration"; version = "0.3.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts, Peter Gavin, Axel Simon, Hamish Mackenzie";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Bindings for the Gtk/OS X integration library.";
      description = "gtk-mac-integration helps integrate Gtk applications with the native Mac\ndesktop and make it feel more like a Mac application.\nhttp://sourceforge.net/apps/trac/gtk-osx/wiki/Integrate";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          ];
        pkgconfig = [ (pkgconfPkgs."gtk-mac-integration") ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
          ];
        };
      };
    }