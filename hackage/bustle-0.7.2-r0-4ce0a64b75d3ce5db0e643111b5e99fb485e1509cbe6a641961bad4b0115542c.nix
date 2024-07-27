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
      specVersion = "2.0";
      identifier = { name = "bustle"; version = "0.7.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "https://www.freedesktop.org/wiki/Software/Bustle/";
      url = "";
      synopsis = "Draw sequence diagrams of D-Bus traffic";
      description = "Bustle records and draws sequence diagrams of D-Bus activity, showing signal emissions, method calls and their corresponding returns, with timestamps for each individual event and the duration of each method call. This can help you check for unwanted D-Bus traffic, and pinpoint why your D-Bus-based application isn't performing as well as you like.  It also provides statistics like signal frequencies and average method call times.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
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
          ] ++ pkgs.lib.optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
            (pkgconfPkgs."gio-unix-2.0" or (errorHandler.pkgConfDepError "gio-unix-2.0"))
          ];
          buildable = true;
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
          ] ++ pkgs.lib.optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
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
          ] ++ pkgs.lib.optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
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
          ] ++ pkgs.lib.optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ];
          buildable = true;
        };
      };
    };
  }