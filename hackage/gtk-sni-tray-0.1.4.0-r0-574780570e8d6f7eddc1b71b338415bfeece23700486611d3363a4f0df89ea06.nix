{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gtk-sni-tray"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/gtk-sni-tray#readme";
      url = "";
      synopsis = "A standalone StatusNotifierItem/AppIndicator tray";
      description = "Please see the README on Github at <https://github.com/IvanMalison/gtk-sni-tray#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cairo)
          (hsPkgs.containers)
          (hsPkgs.dbus)
          (hsPkgs.directory)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-dbusmenugtk3)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gtk-strut)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.hslogger)
          (hsPkgs.status-notifier-item)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          ];
        pkgconfig = [ (pkgconfPkgs."gtk+-3.0") ];
        };
      exes = {
        "gtk-sni-tray-standalone" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dbus)
            (hsPkgs.dbus-hslogger)
            (hsPkgs.gi-gdk)
            (hsPkgs.gi-gtk)
            (hsPkgs.gtk-sni-tray)
            (hsPkgs.gtk-strut)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.status-notifier-item)
            (hsPkgs.text)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }