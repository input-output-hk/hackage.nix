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
      specVersion = "1.6";
      identifier = { name = "hsc3-graphs"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-graphs";
      url = "";
      synopsis = "Haskell SuperCollider Graphs";
      description = "hsc3-graphs provides a collection of illustrative\nunit generator graphs for hsc3.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsc3-adso" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-aleatoric-quartet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-analog-bubbles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-babbling-brook" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-birds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-bit-reduction" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-bottle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-bowed-string" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-ccomb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-chain-saw" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-chrd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-cricket" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-crotale" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-crotale-sine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-cut-outs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-cymbalism" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-deep-sea" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-default" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-demanding-studies" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-dial-history" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-diffraction" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-discretion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-drummer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-eggcrate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-e-lamell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-fbl-fbf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-feedr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-f-lets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-fm-iter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-fm-kltr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-forest-sounds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-fwalk" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-half-life" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-hansm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-harmonic-swimming" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-harmonic-tumbling" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-h-chatter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-hh-808" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-implosion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-insects" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-karplus-strong" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-klink" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-k-ppr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-lfo-modulation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-lf-pulses" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-lg-timed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-lin-sosc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-lucier" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-modal-space" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-moto-rev" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-mouse-clatter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-nharm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-noise-burst-sweep" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-non-real-time" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "hsc3-one-line" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-oscillator-cluster" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-overlap-add" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-pattern-buffer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-plucked-strings" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-police-state" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-pulsing-bottles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-record-scratcher" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-red-frik" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-reset" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-reverberated-sine-percussion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-rm-octaver" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-sample-and-hold-liquidities" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-s-chirp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-scratchy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-scratchy-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-scritto" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-shepard-tones" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-shifting-pulses" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-snare-909" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-sosc-lp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-spe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-sprinkler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-sprinkler-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-strummable-guitar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-sweepy-noise" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-synthetic-piano" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tank" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tgb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tgrn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tgr-rpr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-theremin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-three-cpsw" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-thx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tipnso" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-train" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-trkl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tr-out" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tsort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-vlc-distrtn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-waveset" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-sf" or (buildDepError "hsc3-sf"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-what-was-i-thinking" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-wial" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-wind-metals" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-xy-interference" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-xy-interference-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        };
      };
    }