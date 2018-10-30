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
        name = "manatee-welcome";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Welcome module to help user play Manatee quickly.";
      description = "manatee-welcome is welcome package to help you play Manatee sub-module quickly.\n\nDetails look <http://haskell.org/haskellwiki/Manatee#How_to_write_Manatee_extension>\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs.derive)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.dbus-core)
          (hsPkgs.regex-tdfa)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "manatee-welcome" = {};
      };
    };
  }