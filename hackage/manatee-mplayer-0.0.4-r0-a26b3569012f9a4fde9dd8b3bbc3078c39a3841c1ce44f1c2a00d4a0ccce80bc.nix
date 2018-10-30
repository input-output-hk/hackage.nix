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
        name = "manatee-mplayer";
        version = "0.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Mplayer client extension for Manatee.";
      description = "manatee-mplayer is mplayer client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user@googlegroups.com manatee-develop@googlegroups.com\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.gtk)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.libtagc)
          (hsPkgs.regex-tdfa)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.dbus-core)
          (hsPkgs.gio)
          (hsPkgs.random)
          (hsPkgs.unix)
          (hsPkgs.process)
        ];
      };
      exes = {
        "manatee-mplayer-daemon" = {};
        "manatee-mplayer" = {};
      };
    };
  }