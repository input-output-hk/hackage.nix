{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gnomevfs"; version = "0.11.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GNOME Virtual File System library.";
      description = "GNOME VFS is the GNOME virtual file system.  It is the foundation of the\nNautilus file manager.  It provides a modular architecture and ships with\nseveral modules that implement support for local files, http, ftp and others.\nIt provides an URI-based API, a backend supporting asynchronous file\noperations, a MIME type manipulation library and other features.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          ];
        pkgconfig = [
          (pkgconfPkgs."gnome-vfs-2.0")
          (pkgconfPkgs."gnome-vfs-module-2.0")
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
          ];
        };
      };
    }