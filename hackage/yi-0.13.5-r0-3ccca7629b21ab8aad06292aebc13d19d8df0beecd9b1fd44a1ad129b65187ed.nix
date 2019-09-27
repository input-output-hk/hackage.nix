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
    flags = { emacs = true; pango = true; vim = true; vty = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.13.5"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."yi-core" or (buildDepError "yi-core"))
            (hsPkgs."yi-misc-modes" or (buildDepError "yi-misc-modes"))
            (hsPkgs."yi-mode-haskell" or (buildDepError "yi-mode-haskell"))
            (hsPkgs."yi-mode-javascript" or (buildDepError "yi-mode-javascript"))
            (hsPkgs."yi-rope" or (buildDepError "yi-rope"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."yi-frontend-vty" or (buildDepError "yi-frontend-vty"))) ++ (pkgs.lib).optional (flags.pango) (hsPkgs."yi-frontend-pango" or (buildDepError "yi-frontend-pango"))) ++ (pkgs.lib).optional (flags.vim) (hsPkgs."yi-keymap-vim" or (buildDepError "yi-keymap-vim"))) ++ (pkgs.lib).optional (flags.emacs) (hsPkgs."yi-keymap-emacs" or (buildDepError "yi-keymap-emacs"));
          buildable = true;
          };
        };
      };
    }