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
        name = "manatee-ircclient";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "IRC client extension for Manatee.";
      description = "manatee-ircclient is IRC client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nDefault configuration template at Config\\/IrcClient.hs, copy to directory `HOME/.manatee/config/`.\n\nNote, you need re-install package to start the configuration file take effect the next time,\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs.gtk)
          (hsPkgs.derive)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.dbus-core)
          (hsPkgs.template-haskell)
          (hsPkgs.gtksourceview2)
          (hsPkgs.unix)
          (hsPkgs.network)
          (hsPkgs.groom)
          (hsPkgs.fastirc)
          (hsPkgs.split)
          (hsPkgs.nano-md5)
          (hsPkgs.filepath)
          (hsPkgs.regex-posix)
          (hsPkgs.array)
          (hsPkgs.GoogleTranslate)
          (hsPkgs.utf8-string)
          (hsPkgs.mtl)
          (hsPkgs.Cabal)
          (hsPkgs.MorseCode)
          (hsPkgs.ghc)
        ];
      };
      exes = {
        "manatee-irc-daemon" = {};
        "manatee-ircclient" = {};
      };
    };
  }