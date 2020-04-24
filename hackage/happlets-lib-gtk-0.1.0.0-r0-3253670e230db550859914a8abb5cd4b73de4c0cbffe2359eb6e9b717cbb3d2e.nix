{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."happlets" or ((hsPkgs.pkgs-errors).buildDepError "happlets"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "happlets-lib-gtk-test" = {
          depends = [
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."happlets" or ((hsPkgs.pkgs-errors).buildDepError "happlets"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }