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
        name = "manatee-editor";
        version = "0.0.5";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Editor extension for Manatee.";
      description = "manatee-editor is editor extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
      buildType = "Custom";
    };
    components = {
      "manatee-editor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.gtk)
          (hsPkgs.gtksourceview2)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.dbus-core)
          (hsPkgs.regex-tdfa)
        ];
      };
      exes = {
        "manatee-editor" = {};
      };
    };
  }