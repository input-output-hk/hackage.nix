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
      specVersion = "1.10";
      identifier = {
        name = "taffybar";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "A somewhat fancier desktop bar than xmobar.  This bar is based on\ngtk2hs and provides several widgets (including a few graphical ones).\nIt also sports an optional snazzy system tray.\n\nChanges in v0.1.3:\n\n* Depend on gtk 0.12.1+ to be able to build under ghc 7.2\n\n* Fix the background colors in the calendar so that it follows the GTK theme instead\nof the bar-specific color settings\n\n* Fix the display of non-ASCII window titles in the XMonad log applet (assuming you use the dbusLog function)\n\n* Add a horrible hack to force the bar to not resize to be larger than the screen due to notifications or long window titles\n\nChanges in v0.1.2:\n\n* Readable widget for freedesktop notifications\n\n* Fixed a few potential deadlocks on startup\n\n* Use the GTK+ rc-file styling system for colors instead of hard coding them";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.HTTP)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.web-encodings)
          (hsPkgs.cairo)
          (hsPkgs.dbus-core)
          (hsPkgs.gtk)
          (hsPkgs.dyre)
          (hsPkgs.HStringTemplate)
          (hsPkgs.gtk-traymanager)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.xmonad)
          (hsPkgs.xdg-basedir)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtk+-2.0)
        ];
      };
      exes = {
        "taffybar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dyre)
            (hsPkgs.gtk)
            (hsPkgs.xdg-basedir)
            (hsPkgs.filepath)
          ];
          pkgconfig = [
            (pkgconfPkgs.gtk+-2.0)
          ];
        };
      };
    };
  }