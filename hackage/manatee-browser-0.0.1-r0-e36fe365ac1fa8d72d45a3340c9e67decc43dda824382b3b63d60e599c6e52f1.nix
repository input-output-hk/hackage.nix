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
        name = "manatee-browser";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Browser extension for Manatee.";
      description = "manatee-browser is WebKit browser extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
      buildType = "Custom";
    };
    components = {
      "manatee-browser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.dbus-client)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.webkit)
          (hsPkgs.gtk-serialized-event)
          (hsPkgs.gtk)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "manatee-browser" = {};
      };
    };
  }