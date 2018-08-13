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
        name = "manatee-core";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "The core of Manatee.";
      description = "manatee-core is core package of Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nTo provide basic communication protocol and toolkit.\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
      buildType = "Simple";
    };
    components = {
      "manatee-core" = {
        depends  = [
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
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.dataenc)
          (hsPkgs.derive)
          (hsPkgs.gconf)
          (hsPkgs.binary)
          (hsPkgs.directory)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
        ];
      };
    };
  }