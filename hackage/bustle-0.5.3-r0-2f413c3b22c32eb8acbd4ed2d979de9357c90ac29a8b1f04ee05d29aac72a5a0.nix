{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      interactivetests = false;
      threaded = true;
      withgtk2hsbuildtools = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "bustle";
        version = "0.5.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "http://www.freedesktop.org/wiki/Software/Bustle/";
      url = "";
      synopsis = "Draw sequence diagrams of D-Bus traffic";
      description = "Draw sequence diagrams of D-Bus traffic";
      buildType = "Custom";
    };
    components = {
      exes = {
        "bustle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cairo)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glib)
            (hsPkgs.gio)
            (hsPkgs.gtk3)
            (hsPkgs.hgettext)
            (hsPkgs.mtl)
            (hsPkgs.pango)
            (hsPkgs.parsec)
            (hsPkgs.pcap)
            (hsPkgs.process)
            (hsPkgs.setlocale)
            (hsPkgs.text)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (flags.withgtk2hsbuildtools) (hsPkgs.gtk2hs-buildtools);
          pkgconfig = [
            (pkgconfPkgs.glib-2.0)
          ];
        };
        "test-monitor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cairo)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gtk3)
            (hsPkgs.glib)
            (hsPkgs.hgettext)
            (hsPkgs.mtl)
            (hsPkgs.pango)
            (hsPkgs.parsec)
            (hsPkgs.pcap)
            (hsPkgs.setlocale)
            (hsPkgs.text)
          ];
          pkgconfig = [
            (pkgconfPkgs.glib-2.0)
          ];
        };
        "dump-messages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.mtl)
            (hsPkgs.pcap)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-pcap-crash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.mtl)
            (hsPkgs.pcap)
            (hsPkgs.text)
          ];
        };
        "test-regions" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
        "test-renderer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gtk3)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.pango)
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }