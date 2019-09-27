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
      identifier = { name = "nanocurses"; version = "1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Don Stewart <dons@galois.com>, John Meacham <john@repetae.net>";
      homepage = "http://www.cse.unsw.edu.au/~dons/hmp3.html";
      url = "";
      synopsis = "Simple Curses binding";
      description = "This is a simple binding to the Curses library, a common\nUnix library which allows you to use a terminal as a\ncanvas on which your paint are characters (instead of line\nby line output); Curses is probably most useful for rogue-like\ninterfaces.\n\nNanocurses differs from Hscurses and Mage in that it is\nintended to be portable to Curses libraries other than Ncurses, such\nas Ocurses, Irix's curses, and so on. So it may not have all their features.\n(It does not differ significantly from Hmp3's Curses binding, as the Curses.hsc\nin Nanocurses is essentially extracted from Hmp3.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = [ (pkgs."curses" or (sysDepError "curses")) ];
        buildable = true;
        };
      };
    }