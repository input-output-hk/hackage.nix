{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; generatemanpage = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "xmonad"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Spencer Janssen, Don Stewart, Adam Vogt, David Roundy, Jason Creighton,\nBrent Yorgey, Peter Jones, Peter Simons, Andrea Rossato, Devin Mullins,\nLukas Mai, Alec Berryman, Stefan O'Rear, Daniel Wagner, Peter J. Jones,\nDaniel Schoepe, Karsten Schoelzel, Neil Mitchell, Joachim Breitner,\nPeter De Wachter, Eric Mertens, Geoff Reedy, Michiel Derhaeg,\nPhilipp Balzarek, Valery V. Vorotyntsev, Alex Tarkovsky, Fabian Beuke,\nFelix Hirn, Michael Sloan, Tomas Janousek, Vanessa McHale, Nicolas Pouillard,\nAaron Denney, Austin Seipp, Benno Fünfstück, Brandon S Allbery, Chris Mears,\nChristian Thiemann, Clint Adams, Daniel Neri, David Lazar, Ferenc Wagner,\nFrancesco Ariis, Gábor Lipták, Ivan N. Veselov, Ivan Tarasov, Javran Cheng,\nJens Petersen, Joey Hess, Jonne Ransijn, Josh Holland, Khudyakov Alexey,\nKlaus Weidner, Michael G. Sloan, Mikkel Christiansen, Nicolas Dudebout,\nOndřej Súkup, Paul Hebble, Shachaf Ben-Kiki, Siim Põder, Tim McIver,\nTrevor Elliott, Wouter Swierstra, Conrad Irwin, Tim Thelion";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "xmonad is a tiling window manager for X. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. All features of the window manager are accessible from the\nkeyboard: a mouse is strictly optional. xmonad is written and\nextensible in Haskell. Custom layout algorithms, and other extensions,\nmay be written by the user in config files. Layouts are applied\ndynamically, and different layouts may be used on each workspace.\nXinerama is fully supported, allowing windows to be tiled on several\nscreens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = if flags.testing then false else true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
            ];
          buildable = true;
          };
        "generatemanpage" = {
          depends = (pkgs.lib).optionals (flags.generatemanpage) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.generatemanpage then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
            (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }