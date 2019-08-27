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
    flags = { build-exec = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-graphs"; version = "0.14.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-graphs";
      url = "";
      synopsis = "Haskell SuperCollider Graphs";
      description = "hsc3-graphs provides a collection of illustrative\nunit generator graphs for hsc3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hls" or (buildDepError "hls"))
          (hsPkgs."hmt" or (buildDepError "hmt"))
          (hsPkgs."hosc" or (buildDepError "hosc"))
          (hsPkgs."hps" or (buildDepError "hps"))
          (hsPkgs."hsc3" or (buildDepError "hsc3"))
          (hsPkgs."hsc3-cairo" or (buildDepError "hsc3-cairo"))
          (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
          (hsPkgs."hsc3-sf" or (buildDepError "hsc3-sf"))
          (hsPkgs."hsc3-unsafe" or (buildDepError "hsc3-unsafe"))
          (hsPkgs."hsharc" or (buildDepError "hsharc"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        };
      exes = {
        "hsc3-graphs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3-graphs" or (buildDepError "hsc3-graphs"))
            ];
          };
        "hsc3-1-1Ni" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-1-4Q6" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-1-4QM" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-1-4QN" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-1-4Qx" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-1-Td" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-acid-otophilia" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-adso" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-after-goeyvaerts" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "hsc3-aleatoric-quartet-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-alien-froggies" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-alien-meadow" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-ambient1" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-analog-bubbles" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-arpeggio" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-babbling-brook-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-birds-hp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-birds-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-bit-reduction" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-bitwise" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-black-atlantic-currents" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."primes" or (buildDepError "primes"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            ];
          };
        "hsc3-bohlen-pierce-140" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-bottle-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-bowed-string-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-bs-070705-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-buffer-display" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."cmath" or (buildDepError "cmath"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-cairo" or (buildDepError "hsc3-cairo"))
            ];
          };
        "hsc3-ccomb-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-cds-070701-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-chain-saw-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-choip" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-chrd-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-chrd-t" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "hsc3-clustered-sines" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-clustered-sines-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-comb-delay-sweeps" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-contamination-zone" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-coolant" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-cricket-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-crotale" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-crotale-sine" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-cut-outs-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-cymbalism-accelerando" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-cymbalism-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-dark-sea-horns" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-dark-sea-horns-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-data-space" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-data-space-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-deep-sea" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-deep-trip" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-default" = {
          depends = [
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-demanding-studies" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-dial-history-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-diffraction-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-discretion" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-discretion-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-doppler" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-drummer" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-early-space-music-lp-side-two" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-eggcrate" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-eggcrate-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-e-lamell" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-e-lamell-p" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-ellipse-based-synthesis" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-2012-04-19" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0011" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0014" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0020" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0028" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0030" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0033" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0045" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0049" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-f0-tw0051" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0077" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-f0-tw0084" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-fb-090531" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-fbl-fbf" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-feedr-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-f-lets-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-fm-iter" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-fm-kltr-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-fm-kltr-p" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-for-ann" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-forest-sounds-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-fwalk-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-half-life" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-hansm" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-harmonic-swimming" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-harmonic-swimming-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-harmonic-tumbling-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-h-chatter-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-hell-is-busy" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-hh-808" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-implosion-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-insects-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-jl-1-Z" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-k2ws" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-k2ws-hp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-kabelscahden" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-karplus-strong" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-klink" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-k-ppr" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-k-ppr-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-laser-bubble" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-lfo-modulation" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-lf-pulses" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-lg-timed-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-lin-sosc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-lso-061101-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hls" or (buildDepError "hls"))
            (hsPkgs."hps" or (buildDepError "hps"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."hsc3-sf" or (buildDepError "hsc3-sf"))
            ];
          };
        "hsc3-lucier" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-m21360" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-microhelix" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-modal-space" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-moto-rev" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-mouse-clatter-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-mridangam" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-music-box" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-nharm-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-nharm-p" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-noise-burst-sweep" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-noise-modulated-sines" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-nokia" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-non-real-time" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "hsc3-nv-tw-1" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-nv-tw-41" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-nv-tw-54" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-nx102" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-one-line" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-oscillator-cluster-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-overlap-add" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pattern-buffer-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pebble-beach" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-pkt-26" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-pkt-28" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-plucked-strings-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-police-state" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-police-state-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-pond-life" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pond-life-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-proxy-mixer" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-proxy-mixer-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pulsing-bottles" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pulsing-bottles-m" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-pwm-crossfade" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-rails" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-rain-thunder" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-random-panning-sines" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-random-panning-sines-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-random-pulsations" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-random-sine-waves" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-random-sine-waves-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-random-sine-waves-she" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-record-scratcher" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-red-frik-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-reset" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-resonant-dust" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-resonant-dust-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-reverberated-sine-percussion-hp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-reverberated-sine-percussion-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-ring-modulated-klank" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-rm-octaver" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-rzblp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-rzblp-hp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-rzblp-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-rzblp-u" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-unsafe" or (buildDepError "hsc3-unsafe"))
            ];
          };
        "hsc3-sam-i-am" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "hsc3-sample-and-hold-liquidities" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-saucer-base" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-sawed-cymbals" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-s-chirp" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-scratchy" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-scratchy-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-scritto" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-scritto-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-seqr" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-shepard-tones" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-shifting-pulses-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-sidereal-time" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-sidereal-time-hp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-sinusdeklinationen" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "hsc3-slow-beating-harmonic-sines" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "hsc3-slow-beating-sines" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "hsc3-snare-909" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-sosc-lp-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-spe-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-spe-p" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-sprinkler" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-sprinkler-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-string-wander-cluster" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-strummable-guitar" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-sweepy-noise" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-synthetic-piano-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-tank" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-tank-hp" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-tank-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-tgb-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tgrn" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tgr-rpr-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-thb" = {
          depends = [
            (hsPkgs."hmt" or (buildDepError "hmt"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-theremin" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-three-cpsw-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-thx" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hsc3-tipnso" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-train" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-tremulate" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-tremulate-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-tremulate-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-trkl-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-trmlo" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-trmlo-u" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."hsc3-unsafe" or (buildDepError "hsc3-unsafe"))
            ];
          };
        "hsc3-tr-out-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            ];
          };
        "hsc3-tsort" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-uplink" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-uplink-hp" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-urandom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-vla-addtn" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-vla-addtn-sharc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."hsharc" or (buildDepError "hsharc"))
            ];
          };
        "hsc3-vlc-distrtn-m" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-voscil" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-voscil-u" = {
          depends = [
            (hsPkgs."hosc" or (buildDepError "hosc"))
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            (hsPkgs."hsc3-unsafe" or (buildDepError "hsc3-unsafe"))
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
        "hsc3-what-was-i-thinking-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-why-supercollider" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (buildDepError "sc3-rdu"))
            ];
          };
        "hsc3-wial-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-wind-metals-m" = {
          depends = [
            (hsPkgs."hsc3" or (buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (buildDepError "hsc3-lang"))
            ];
          };
        "hsc3-xy-interference" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        "hsc3-xy-interference-m" = {
          depends = [ (hsPkgs."hsc3" or (buildDepError "hsc3")) ];
          };
        };
      };
    }