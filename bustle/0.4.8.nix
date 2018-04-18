{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      interactivetests = false;
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bustle";
          version = "0.4.8";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Will Thompson <will@willthompson.co.uk>";
        author = "Will Thompson <will@willthompson.co.uk>";
        homepage = "";
        url = "";
        synopsis = "Draw sequence diagrams of D-Bus traffic";
        description = "Draw sequence diagrams of D-Bus traffic";
        buildType = "Custom";
      };
      components = {
        exes = {
          bustle = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cairo
              hsPkgs.containers
              hsPkgs.dbus
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.hgettext
              hsPkgs.mtl
              hsPkgs.pango
              hsPkgs.parsec
              hsPkgs.pcap
              hsPkgs.process
              hsPkgs.setlocale
              hsPkgs.text
              hsPkgs.time
            ];
          };
          test-monitor = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cairo
              hsPkgs.containers
              hsPkgs.dbus
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gtk
              hsPkgs.glib
              hsPkgs.hgettext
              hsPkgs.mtl
              hsPkgs.pango
              hsPkgs.parsec
              hsPkgs.pcap
              hsPkgs.setlocale
              hsPkgs.text
            ];
          };
          dump-messages = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.dbus
              hsPkgs.mtl
              hsPkgs.pcap
              hsPkgs.text
            ];
          };
        };
        tests = {
          test-pcap-crash = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.dbus
              hsPkgs.mtl
              hsPkgs.pcap
              hsPkgs.text
            ];
          };
          test-regions = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
          test-renderer = {
            depends  = [
              hsPkgs.base
              hsPkgs.cairo
              hsPkgs.containers
              hsPkgs.dbus
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.pango
              hsPkgs.hgettext
              hsPkgs.setlocale
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }