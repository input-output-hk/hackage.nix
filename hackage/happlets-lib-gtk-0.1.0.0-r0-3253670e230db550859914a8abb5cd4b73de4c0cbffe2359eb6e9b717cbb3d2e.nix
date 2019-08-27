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
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "happlets-lib-gtk"; version = "0.1.0.0"; };
      license = "LicenseRef-AGPL";
      copyright = "(C) 2017-2018 Ramin Honary, all rights reserved.";
      maintainer = "RaminHAL9001@gmail.com";
      author = "Ramin Honary";
      homepage = "https://github.com/RaminHAL9001/happlets-lib-gtk";
      url = "";
      synopsis = "The \"Haskell Applets\" Gtk+ ver. 2 back-end for \"happlets\".";
      description = "\n*WARNING:* There are still some known bugs in this package, it is being\nuploaded to Hackage for evaluation purposes only. Although it is being\nactively developed, there is no release schedule for a production-ready\nversion of this package. Contributions to the repository on GitHub are\nwelcome.\n\nThis packages provides the Gtk+ v2 back-end to the \"happlets\" GUI\nframework. To create a Gtk+ applet, import the \"Happlets.Lib.Gtk\"\nmodule. \"Happlets.Lib.Gtk\" re-exports the \"Happlets\" module, so you can\nuse all of the primitives provided by the \"Happlets\" module to construct\nyour applet. In your \"main\" function, launch the main event loop by\npassing the 'Happlets.Lib.Gtk.gtkHapplet' function as the \"Provider\"\neither to the 'Happlets.Initialize.happlet' function or to the\n'Happlets.Initialize.simpleHapplet' function.\n\nFor an example of how to program your own Happlet, run the \"cabal\nconfigure\" command with the \"--enable-tests\" flag set. This will build\nthe \"Happlets.Lib.Gtk.TestSuite\" executable program. Refer to the source\ncode for \"TestSuite\" to see how the application is structured.\n\nThe goal of the Happlets project is to allow you to create very simple,\nthread-safe applications that contain nothing more than a single window\nwith a drawing canvas that can respond to user input events, like mouse\nclicks, key-presses, or frame animation events. The intention is to\ncreate a minimal programming platform for small, single-purpose\ngraphical applications which simply displays some interactive graphic,\nfor example a plot of some data, or a simple game. Naturally, the\nHapplet program can be arbitrarily complex, but it may be better to\nconsider other, FRP-based solutions if managing events becomes too\ndifficult.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."happlets" or (buildDepError "happlets"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      tests = {
        "happlets-lib-gtk-test" = {
          depends = [
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."happlets" or (buildDepError "happlets"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }