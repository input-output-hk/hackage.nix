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
    flags = { with_curses = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "todos"; version = "0.5.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "http://gitorious.org/todos";
      url = "";
      synopsis = "Easy-to-use TODOs manager.";
      description = "todos is a simple TODO manager. TODO records theirself are described in\nplain-text file, and todos allows you to show only needed of\nthem. So, todos works as specialized `grep' utility.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."data-hash" or (buildDepError "data-hash"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."dates" or (buildDepError "dates"))
          ] ++ (pkgs.lib).optionals (flags.with_curses) [
          (hsPkgs."hscurses" or (buildDepError "hscurses"))
          (hsPkgs."setlocale" or (buildDepError "setlocale"))
          ];
        };
      exes = {
        "todos" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."data-hash" or (buildDepError "data-hash"))
            (hsPkgs."dyre" or (buildDepError "dyre"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."dates" or (buildDepError "dates"))
            ];
          };
        };
      };
    }