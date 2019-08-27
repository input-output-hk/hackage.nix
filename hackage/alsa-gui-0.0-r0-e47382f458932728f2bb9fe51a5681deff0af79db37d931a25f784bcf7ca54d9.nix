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
      specVersion = "1.8";
      identifier = { name = "alsa-gui"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Some simple interactive programs for sending MIDI control messages via ALSA";
      description = "Some simple interactive programs for sending MIDI control messages via ALSA.\nThe GUI uses wxHaskell.\nCurrently we provide these programs:\n\n* Send @All Notes Off@ and @All Sounds Off@ events.\n\n* Show several sliders, that trigger sending MIDI controller messages.\n\n* Show a list widget, that triggers MIDI program changes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alsa-midi-mode" = {
          depends = [
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-midi-program" = {
          depends = [
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-midi-controller" = {
          depends = [
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }