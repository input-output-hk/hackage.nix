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
    flags = { testing = false; generatemanpage = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "xmonad"; version = "0.14.2"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."X11" or (buildDepError "X11"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."setlocale" or (buildDepError "setlocale"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."xmonad" or (buildDepError "xmonad"))
            ];
          };
        "generatemanpage" = {
          depends = (pkgs.lib).optionals (flags.generatemanpage) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."xmonad" or (buildDepError "xmonad"))
            ];
          };
        };
      };
    }