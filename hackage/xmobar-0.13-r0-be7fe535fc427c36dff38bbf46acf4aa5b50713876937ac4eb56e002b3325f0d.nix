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
    flags = {
      small_base = true;
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      with_iwlib = false;
      with_mpd = false;
      all_extensions = false;
      with_alsa = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmobar"; version = "0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
      author = "Andrea Rossato";
      homepage = "http://projects.haskell.org/xmobar/";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = ((((([
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."directory" or (buildDepError "directory"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optionals (flags.with_xft || flags.all_extensions) [
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."X11-xft" or (buildDepError "X11-xft"))
            ]) ++ (pkgs.lib).optional (flags.with_utf8 || flags.all_extensions) (hsPkgs."utf8-string" or (buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.with_inotify || flags.all_extensions) (hsPkgs."hinotify" or (buildDepError "hinotify"))) ++ (pkgs.lib).optional (flags.with_mpd || flags.all_extensions) (hsPkgs."libmpd" or (buildDepError "libmpd"))) ++ (pkgs.lib).optional (flags.with_alsa || flags.all_extensions) (hsPkgs."alsa-mixer" or (buildDepError "alsa-mixer"));
          libs = (pkgs.lib).optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw" or (sysDepError "iw"));
          };
        };
      };
    }