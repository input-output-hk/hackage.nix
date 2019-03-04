{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taffybar"; version = "3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/taffybar/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "Taffybar is a gtk+3 (through gtk2hs) based desktop information bar, intended\nprimarily for use with XMonad, though it can also function alongside other EWMH\ncompliant window managers. It is similar in spirit to xmobar, but it differs in\nthat it gives up some simplicity for a reasonable helping of eye candy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ConfigFile)
          (hsPkgs.HStringTemplate)
          (hsPkgs.X11)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dbus)
          (hsPkgs.dbus-hslogger)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.either)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-cairo-render)
          (hsPkgs.gi-cairo-connector)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gdkx11)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gtk-hs)
          (hsPkgs.gi-pango)
          (hsPkgs.gtk-sni-tray)
          (hsPkgs.gtk-strut)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.hslogger)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.multimap)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.rate-limit)
          (hsPkgs.regex-compat)
          (hsPkgs.safe)
          (hsPkgs.scotty)
          (hsPkgs.split)
          (hsPkgs.status-notifier-item)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.tuple)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.xdg-basedir)
          (hsPkgs.xml)
          (hsPkgs.xml-helpers)
          (hsPkgs.xmonad)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        pkgconfig = [ (pkgconfPkgs.gtk+-3.0) ];
        };
      exes = {
        "taffybar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.taffybar)
            ];
          pkgconfig = [ (pkgconfPkgs.gtk+-3.0) ];
          };
        };
      };
    }