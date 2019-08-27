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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmp3"; version = "1.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hmp3";
      url = "";
      synopsis = "An ncurses mp3 player written in Haskell";
      description = "An mp3 player with a curses frontend. Playlists are populated by\npassing directory names on the commandline, and saved to the\n~/.hmp3db database. Type 'h' to display the help page.  Colours may\nbe configured at runtime by editing the \"~/.hmp3\" file.\n";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hmp3" = {
          depends = [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."random" or (buildDepError "random"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          libs = [ (pkgs."curses" or (sysDepError "curses")) ];
          };
        };
      };
    }