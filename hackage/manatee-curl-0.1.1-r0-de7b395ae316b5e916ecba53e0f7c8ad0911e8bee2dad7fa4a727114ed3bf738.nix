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
        name = "manatee-curl";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Download Manager extension for Manatee.";
      description = "manatee-curl is multithreads download manager extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nDefault configuration template at Config\\/Curl.hs, copy to directory `HOME/.manatee/config/`.\n\nNote, you need re-install package to start the configuration file take effect the next time,\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs.gtk)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.glib)
          (hsPkgs.gio)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.curl)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.derive)
          (hsPkgs.binary)
          (hsPkgs.regex-tdfa)
          (hsPkgs.dbus-core)
        ];
      };
      exes = { "manatee-curl" = {}; };
    };
  }