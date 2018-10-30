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
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "A somewhat fancier desktop bar than xmobar.  This bar is based on\ngtk2hs and provides several widgets (including a few graphical ones).\nIt also sports an optional snazzy system tray.";
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
          (hsPkgs.cairo)
          (hsPkgs.dbus)
          (hsPkgs.gtk)
          (hsPkgs.dyre)
          (hsPkgs.HStringTemplate)
          (hsPkgs.gtk-traymanager)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.xmonad)
          (hsPkgs.xdg-basedir)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.X11)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.process)
          (hsPkgs.enclosed-exceptions)
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
            (hsPkgs.safe)
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