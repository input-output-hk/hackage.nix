{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "manatee-core"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "The core of Manatee.";
      description = "manatee-core is core package of Manatee (Haskell/Gtk+ Integrated Live Environment)\nTo provide basic communication protocol and toolkit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.dbus-client)
          (hsPkgs.dbus-core)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.cairo)
          (hsPkgs.gio)
          (hsPkgs.regex-tdfa)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.template-haskell)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.old-time)
          (hsPkgs.glib)
          (hsPkgs.time)
          (hsPkgs.gtksourceview2)
          (hsPkgs.Cabal)
          (hsPkgs.old-locale)
          (hsPkgs.datetime)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.dataenc)
          (hsPkgs.derive)
          (hsPkgs.gconf)
          (hsPkgs.binary)
          (hsPkgs.directory)
          ];
        };
      };
    }