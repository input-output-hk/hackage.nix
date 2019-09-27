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
      specVersion = "0";
      identifier = { name = "HPlot"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov ZAYTSEV <yakov@yakov.cc>";
      author = "Yakov ZAYTSEV <yakov@yakov.cc>";
      homepage = "http://yakov.cc/HPlot.html";
      url = "";
      synopsis = "A minimal monadic PLplot interface for Haskell";
      description = "This package provides simple monadic interface to the PLplot cross-platform software\npackage for creating scientific plots.\n\nHaddock documentation (hyperlinked with source code) is available from homepage\n\nPlplotCanvas widget is implemented to be compatible with gtk2hs. PLplot type class allows\naddition of other display drivers without need to adopt application code\n\nThe idea was that with the help of PLplotM monad it should be easy to make\nmore abstract interfaces and combinators to do plots\n\nYou are welcome to send your changes to be included in future release\n\nIt will be great if you will do 'git format-patch' to prepare email with changes against particular version\n\nChanges since 0.2:\n\n* Roman Salmin contributed new elaborated Example.hs\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."glade" or (buildDepError "glade"))
          (hsPkgs."glib" or (buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."plplotd-gnome2" or (pkgConfDepError "plplotd-gnome2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "Example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."glib" or (buildDepError "glib"))
            ];
          pkgconfig = [
            (pkgconfPkgs."plplotd-gnome2" or (pkgConfDepError "plplotd-gnome2"))
            ];
          buildable = true;
          };
        };
      };
    }