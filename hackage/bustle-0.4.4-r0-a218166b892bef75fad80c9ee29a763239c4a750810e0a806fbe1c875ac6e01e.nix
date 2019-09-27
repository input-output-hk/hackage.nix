let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { interactivetests = false; threaded = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "bustle"; version = "0.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Will Thompson <will@willthompson.co.uk>";
      author = "Will Thompson <will@willthompson.co.uk>";
      homepage = "";
      url = "";
      synopsis = "Draw pretty sequence diagrams of D-Bus traffic";
      description = "Draw pretty sequence diagrams of D-Bus traffic";
      buildType = "Custom";
      };
    components = {
      exes = {
        "bustle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."hgettext" or (buildDepError "hgettext"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pango" or (buildDepError "pango"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pcap" or (buildDepError "pcap"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (pkgConfDepError "glib-2.0"))
            ];
          buildable = true;
          };
        "test-monitor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."hgettext" or (buildDepError "hgettext"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pango" or (buildDepError "pango"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pcap" or (buildDepError "pcap"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          pkgconfig = [
            (pkgconfPkgs."glib-2.0" or (pkgConfDepError "glib-2.0"))
            ];
          buildable = if flags.interactivetests then true else false;
          };
        "dump-messages" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pcap" or (buildDepError "pcap"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.interactivetests then true else false;
          };
        };
      tests = {
        "test-pcap-crash" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pcap" or (buildDepError "pcap"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "test-regions" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "test-renderer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pango" or (buildDepError "pango"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }