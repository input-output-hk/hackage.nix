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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "xmonad"; version = "0.17.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Spencer Janssen, Don Stewart, Adam Vogt, David Roundy, Jason Creighton,\nBrent Yorgey, Peter Jones, Peter Simons, Andrea Rossato, Devin Mullins,\nLukas Mai, Alec Berryman, Stefan O'Rear, Daniel Wagner, Peter J. Jones,\nDaniel Schoepe, Karsten Schoelzel, Neil Mitchell, Joachim Breitner,\nPeter De Wachter, Eric Mertens, Geoff Reedy, Michiel Derhaeg,\nPhilipp Balzarek, Valery V. Vorotyntsev, Alex Tarkovsky, Fabian Beuke,\nFelix Hirn, Michael Sloan, Tomas Janousek, Vanessa McHale, Nicolas Pouillard,\nAaron Denney, Austin Seipp, Benno Fünfstück, Brandon S Allbery, Chris Mears,\nChristian Thiemann, Clint Adams, Daniel Neri, David Lazar, Ferenc Wagner,\nFrancesco Ariis, Gábor Lipták, Ivan N. Veselov, Ivan Tarasov, Javran Cheng,\nJens Petersen, Joey Hess, Jonne Ransijn, Josh Holland, Khudyakov Alexey,\nKlaus Weidner, Michael G. Sloan, Mikkel Christiansen, Nicolas Dudebout,\nOndřej Súkup, Paul Hebble, Shachaf Ben-Kiki, Siim Põder, Tim McIver,\nTrevor Elliott, Wouter Swierstra, Conrad Irwin, Tim Thelion, Tony Zorman";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "xmonad is a tiling window manager for X. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. All features of the window manager are accessible from the\nkeyboard: a mouse is strictly optional. xmonad is written and\nextensible in Haskell. Custom layout algorithms, and other extensions,\nmay be written by the user in config files. Layouts are applied\ndynamically, and different layouts may be used on each workspace.\nXinerama is fully supported, allowing windows to be tiled on several\nscreens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }