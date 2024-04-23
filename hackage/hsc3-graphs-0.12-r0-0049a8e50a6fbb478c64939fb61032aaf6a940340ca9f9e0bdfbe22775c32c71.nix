{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-graphs"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-graphs";
      url = "";
      synopsis = "Haskell SuperCollider Graphs";
      description = "hsc3-graphs provides a collection of illustrative\nunit generator graphs for hsc3.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsc3-1-1Ni" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-1-4Q6" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-1-4QM" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-1-4QN" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-1-4Qx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-1-Td" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-acid-otophilia" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-adso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-after-goeyvaerts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-aleatoric-quartet-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-alien-froggies" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-alien-meadow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-ambient1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-analog-bubbles" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-arpeggio" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-babbling-brook-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-birds-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-bit-reduction" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-bitwise" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-black-atlantic-currents" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
          buildable = true;
        };
        "hsc3-bohlen-pierce-140" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-bottle-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-bowed-string-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-bs-070705" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-buffer-display" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
            (hsPkgs."cmath" or (errorHandler.buildDepError "cmath"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-cairo" or (errorHandler.buildDepError "hsc3-cairo"))
          ];
          buildable = true;
        };
        "hsc3-ccomb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-cds-070701" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-chain-saw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-choip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-chrd-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-chrd-t" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-clustered-sines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-comb-delay-sweeps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-contamination-zone" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-coolant" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-cricket-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-crotale" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-crotale-sine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-cut-outs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-cymbalism-accelerando" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-cymbalism-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-dark-sea-horns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-data-space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-deep-sea" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-deep-trip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-default" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-demanding-studies" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-dial-history" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-diffraction" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-discretion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-discretion-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-doppler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-drummer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-early-space-music-lp-side-two" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-eggcrate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-eggcrate-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-e-lamell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-e-lamell-p" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-ellipse-based-synthesis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-2012-04-19" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0011" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0014" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0020" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0028" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0030" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0033" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0045" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0049" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0051" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0077" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f0-tw0084" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-fb-090531" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-fbl-fbf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-feedr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-f-lets" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-fm-iter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-fm-kltr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-fm-kltr-p" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-for-ann" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-forest-sounds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-fwalk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-half-life" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-hansm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-harmonic-swimming" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-harmonic-swimming-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-harmonic-tumbling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-h-chatter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-hell-is-busy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-hh-808" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-implosion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-insects" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-jl-1-Z" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-k2ws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-kabelscahden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-karplus-strong" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-klink" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-k-ppr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-k-ppr-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-laser-bubble" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-lfo-modulation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-lf-pulses" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-lg-timed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-lin-sosc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-lso-061101" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hps" or (errorHandler.buildDepError "hps"))
            (hsPkgs."hls" or (errorHandler.buildDepError "hls"))
            (hsPkgs."hsc3-sf" or (errorHandler.buildDepError "hsc3-sf"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "hsc3-lucier" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-m21360" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-microhelix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-modal-space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-moto-rev" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-mouse-clatter-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-mridangam" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-music-box" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-nharm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-nharm-p" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-noise-burst-sweep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-noise-modulated-sines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-nokia" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-non-real-time" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "hsc3-nv-tw-1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-nv-tw-41" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-nv-tw-54" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-nx102" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-one-line" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-oscillator-cluster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-overlap-add" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-pattern-buffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-pebble-beach" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-pkt-26" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-pkt-28" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-plucked-strings" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-police-state" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-pond-life" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-proxy-mixer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-proxy-mixer-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-pulsing-bottles" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-pulsing-bottles-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-pwm-crossfade" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-rails" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-rain-thunder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-random-panning-sines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-random-panning-sines-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-random-pulsations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-random-sine-waves" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-record-scratcher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-red-frik" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-reset" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-resonant-dust" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-reverberated-sine-percussion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-ring-modulated-klank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-rm-octaver" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-rzblp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-rzblp-u" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-unsafe" or (errorHandler.buildDepError "hsc3-unsafe"))
          ];
          buildable = true;
        };
        "hsc3-sam-i-am" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-sample-and-hold-liquidities" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-saucer-base" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-sawed-cymbals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-s-chirp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-scratchy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-scratchy-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-scritto" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-scritto-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-seqr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-shepard-tones" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-shifting-pulses" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-sidereal-time" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-sinusdeklinationen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-slow-beating-harmonic-sines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-slow-beating-sines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-snare-909" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-sosc-lp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-spe-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-spe-p" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-sprinkler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-sprinkler-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-string-wander-cluster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-strummable-guitar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-sweepy-noise" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-synthetic-piano-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-tank-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tgb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tgrn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tgr-rpr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-thb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          ];
          buildable = true;
        };
        "hsc3-theremin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-three-cpsw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-thx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-tipnso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-train" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tremulate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-tremulate-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-trkl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-trmlo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-unsafe" or (errorHandler.buildDepError "hsc3-unsafe"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-tr-out" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-tsort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-uplink" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-urandom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "hsc3-vla-addtn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-vla-addtn-sharc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsharc" or (errorHandler.buildDepError "hsharc"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-vlc-distrtn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          ];
          buildable = true;
        };
        "hsc3-voscil" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3-unsafe" or (errorHandler.buildDepError "hsc3-unsafe"))
          ];
          buildable = true;
        };
        "hsc3-waveset" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-sf" or (errorHandler.buildDepError "hsc3-sf"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hsc3-what-was-i-thinking" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-why-supercollider" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."sc3-rdu" or (errorHandler.buildDepError "sc3-rdu"))
          ];
          buildable = true;
        };
        "hsc3-wial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-wind-metals-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-xy-interference" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
        "hsc3-xy-interference-m" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
          buildable = true;
        };
      };
    };
  }