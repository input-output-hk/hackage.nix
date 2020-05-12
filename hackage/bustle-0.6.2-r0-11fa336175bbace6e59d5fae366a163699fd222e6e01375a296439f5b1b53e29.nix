{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        ];
      };
    components = {
      exes = {
        "bustle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
            ];
          buildable = true;
          };
        "test-monitor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
            ];
          buildable = if flags.interactivetests then true else false;
          };
        "dump-messages" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.interactivetests then true else false;
          };
        };
      tests = {
        "test-pcap-crash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "test-regions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "test-renderer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }