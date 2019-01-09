{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "manatee-anything"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Multithread interactive input/search framework for Manatee";
      description = "manatee-anything is interactive plugin for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nManual look <http://haskell.org/haskellwiki/Manatee>\n\nScreenshot at <http://goo.gl/MkVw>\n\nIRC channel:\n\nirc.freenode.net 6667 <##manatee>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
      exes = { "manatee-anything" = {}; };
      };
    }