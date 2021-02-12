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
    flags = { hgettext = false; interactivetests = false; threaded = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "bustle"; version = "0.8.0"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "https://gitlab.freedesktop.org/bustle/bustle#readme";
      url = "";
      synopsis = "Draw sequence diagrams of D-Bus traffic";
      description = "Bustle records and draws sequence diagrams of D-Bus activity, showing signal emissions, method calls and their corresponding returns, with timestamps for each individual event and the duration of each method call. This can help you check for unwanted D-Bus traffic, and pinpoint why your D-Bus-based application isn't performing as well as you like.  It also provides statistics like signal frequencies and average method call times.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
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
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            ];
          libs = [ (pkgs."pcap" or (errorHandler.sysDepError "pcap")) ];
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
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
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
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            ];
          libs = [ (pkgs."pcap" or (errorHandler.sysDepError "pcap")) ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (errorHandler.pkgConfDepError "glib-2.0"))
            (pkgconfPkgs."gio-unix-2.0" or (errorHandler.pkgConfDepError "gio-unix-2.0"))
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
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ] ++ (pkgs.lib).optionals (flags.hgettext) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            ];
          buildable = true;
          };
        };
      };
    }