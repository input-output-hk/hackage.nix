{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "manatee-anything";
        version = "0.0.6";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Multithread interactive input/search framework for Manatee";
      description = "manatee-anything is interactive plugin for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
      buildType = "Simple";
    };
    components = {
      "manatee-anything" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.gio)
          (hsPkgs.filepath)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          (hsPkgs.proc)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.unix)
          (hsPkgs.regex-tdfa)
          (hsPkgs.bytestring)
          (hsPkgs.GoogleSuggest)
          (hsPkgs.dataenc)
          (hsPkgs.dbus-core)
          (hsPkgs.split)
        ];
      };
      exes = {
        "manatee-anything" = {};
      };
    };
  }