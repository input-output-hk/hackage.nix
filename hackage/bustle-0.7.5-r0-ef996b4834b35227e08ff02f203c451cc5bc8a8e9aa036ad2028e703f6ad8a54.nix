{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hgettext = true; interactivetests = false; threaded = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "bustle"; version = "0.7.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "https://gitlab.freedesktop.org/bustle/bustle#readme";
      url = "";
      synopsis = "Draw sequence diagrams of D-Bus traffic";
      description = "Bustle records and draws sequence diagrams of D-Bus activity, showing signal emissions, method calls and their corresponding returns, with timestamps for each individual event and the duration of each method call. This can help you check for unwanted D-Bus traffic, and pinpoint why your D-Bus-based application isn't performing as well as you like.  It also provides statistics like signal frequencies and average method call times.";
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
          pkgconfig = [ (pkgconfPkgs."glib-2.0") (pkgconfPkgs."gio-unix-2.0") ];
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
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
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
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
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
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
            ];
          };
        };
      };
    }