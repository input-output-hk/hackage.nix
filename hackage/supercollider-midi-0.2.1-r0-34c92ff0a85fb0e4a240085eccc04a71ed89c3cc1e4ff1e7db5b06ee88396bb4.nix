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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "supercollider-midi"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "http://code.haskell.org/~thielema/supercollider-midi/";
      synopsis = "Demonstrate how to control SuperCollider via ALSA-MIDI";
      description = "Two small example programs where SuperCollider is controlled by MIDI.\n\n* Control parameters of a wind noise via MIDI controllers\n\n* Use UGens as instruments,\nwhich will be played upon MIDI messages that arrive through ALSA.\nThis way you can play MIDI files using @pmidi@\nor you can use your computer as MIDI expander controlled by a keyboard.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sc-keyboard" = {
          depends = [
            (hsPkgs."supercollider-ht" or (buildDepError "supercollider-ht"))
            (hsPkgs."opensoundcontrol-ht" or (buildDepError "opensoundcontrol-ht"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."data-accessor-transformers" or (buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."base" or (buildDepError "base"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        "sc-wind" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }