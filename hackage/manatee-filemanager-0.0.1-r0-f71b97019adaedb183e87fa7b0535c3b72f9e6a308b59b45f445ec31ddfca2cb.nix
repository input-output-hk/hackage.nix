{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "manatee-filemanager";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "File manager extension for Manatee.";
      description = "manatee-filemanager is file manager extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.gtk)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.glib)
          (hsPkgs.gio)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "manatee-filemanager" = {};
      };
    };
  }