{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "manatee-terminal";
        version = "0.0.6";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Terminal Emulator extension for Manatee.";
      description = "manatee-terminal is terminal emulator extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nBecause VTE widget is not MVC design as Manatee's framework, so terminal process won't running in background like other extension, instead terminal process will kill when terminal buffer close by user.\n\nVTE widget will replace by MVC design terminal emulator widget in the future, as temporary solution, please make sure command have finish before you close terminal buffer, i warning you. :)\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
      buildType = "Custom";
    };
    components = {
      "manatee-terminal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.gtk)
          (hsPkgs.vte)
          (hsPkgs.text)
        ];
      };
      exes = {
        "manatee-terminal" = {};
      };
    };
  }