{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hgettext = true; interactivetests = false; threaded = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "bustle"; version = "0.6.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "https://www.freedesktop.org/wiki/Software/Bustle/";
      url = "";
      synopsis = "Draw sequence diagrams of D-Bus traffic";
      description = "Draw sequence diagrams of D-Bus traffic";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
      };
    components = {
      exes = {
        "bustle" = {
          depends = [
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
            (hsPkgs.mtl)
            (hsPkgs.pango)
            (hsPkgs.pcap)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
            ];
          pkgconfig = [ (pkgconfPkgs."glib-2.0") ];
          };
        "test-monitor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cairo)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gtk3)
            (hsPkgs.glib)
            (hsPkgs.mtl)
            (hsPkgs.pango)
            (hsPkgs.pcap)
            (hsPkgs.text)
            ];
          pkgconfig = [ (pkgconfPkgs."glib-2.0") ];
          };
        "dump-messages" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.mtl)
            (hsPkgs.pcap)
            (hsPkgs.text)
            ];
          };
        "test-regions" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
        "test-renderer" = {
          depends = [
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
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }