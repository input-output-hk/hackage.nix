{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-exec = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-graphs";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2006-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3-graphs";
        url = "";
        synopsis = "Haskell SuperCollider Graphs";
        description = "hsc3-graphs provides a collection of illustrative\nunit generator graphs for hsc3.";
        buildType = "Simple";
      };
      components = {
        "hsc3-graphs" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hls
            hsPkgs.hmt
            hsPkgs.hosc
            hsPkgs.hps
            hsPkgs.hsc3
            hsPkgs.hsc3-cairo
            hsPkgs.hsc3-lang
            hsPkgs.hsc3-sf
            hsPkgs.hsc3-unsafe
            hsPkgs.hsc3-utils
            hsPkgs.hsharc
            hsPkgs.MonadRandom
            hsPkgs.primes
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.sc3-rdu
            hsPkgs.she
            hsPkgs.split
          ];
        };
        exes = {
          "hsc3-graphs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-graphs
            ];
          };
          "hsc3-1-1Ni" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-1-4Q6" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-1-4QM" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-1-4QN" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-1-4Qx" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-1-4Tw" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-1-4VL" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-1-9" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-1-Td" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-acid-otophilia" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.random
            ];
          };
          "hsc3-adc-16-6-2" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-adso" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-after-goeyvaerts" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
              hsPkgs.split
            ];
          };
          "hsc3-aleatoric-quartet-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-alien-froggies" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-alien-froggies-rec" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-alien-meadow" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-ambient1" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-analog-bubbles" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-analog-bubbles-mouse" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-analogue-daze" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-arpeggio" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-babbling-brook" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-babbling-brook-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-berlin-1977" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-birdies" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-birds-am-fm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          "hsc3-birds" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-birds-hp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-birds-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-bit-reduction" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-bitwise" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-black-atlantic-currents" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.primes
              hsPkgs.random
              hsPkgs.random-shuffle
            ];
          };
          "hsc3-blips-001" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-blips-001-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-blips-001-u" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsc3-unsafe
            ];
          };
          "hsc3-bohlen-pierce-140" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-bottle-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-bouncing-objects" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-bowed-string-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-bs-070705-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-buffer-display" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cairo
              hsPkgs.hsc3
              hsPkgs.hsc3-cairo
            ];
          };
          "hsc3-ccomb-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-cds-070701-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-chain-saw-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-choip" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-chrd-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-chrd-t" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.MonadRandom
            ];
          };
          "hsc3-clustered-sines" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-clustered-sines-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-comb-delay-sweeps" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          "hsc3-contamination-zone" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-coolant" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-cricket-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-crotale" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-crotale-sine" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-cut-outs-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-cymbalism-accelerando" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-cymbalism-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-dark-sea-horns" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-dark-sea-horns-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-data-space" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-data-space-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-deep-sea" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-deep-trip" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-default" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-demanding-studies" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-dial-history-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          "hsc3-diffraction-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          "hsc3-discretion" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-discretion-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-distort-input" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-doppler" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-drone-plus-rhythm" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-drummer" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-early-space-music-lp-side-two" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-eggcrate" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-eggcrate-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-e-lamell" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-e-lamell-p" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-ellipse-based-synthesis" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-2012-04-19" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-454598285861617665" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-456384156159574016" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0011" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0014" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0020" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0026" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-f0-tw0028" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0030" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0033" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0041" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0045" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0049" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          "hsc3-f0-tw0051" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0077" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0084" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0120" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0121" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0125" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0134" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0220" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0224" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f0-tw0225" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-fb-090531" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-fbl-fbf" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-feedr-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-filter-input" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-f-lets-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-fm-iter" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-fm-kltr-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-fm-kltr-p" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-for-ann" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-forest-sounds-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-fwalk-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-half-life" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-hansm" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-hard-sync-sawtooth-with-lfo" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-harmonic-swimming" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-harmonic-swimming-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-harmonic-tumbling" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-harmonic-tumbling-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-h-chatter-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-hell-is-busy" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-hh-808" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-implosion-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-impulse-sequencer" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-insects-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-jl-1-Z" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-jr-100515" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-k2ws" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-k2ws-hp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-kabelscahden" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-karplus-strong" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-klink" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-k-ppr" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-k-ppr-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-landon-rose" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-laser-bubble" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lfo-modulation" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lf-pulses" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lg-timed-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lin-sosc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-lp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lso-061101-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hls
              hsPkgs.hps
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsc3-sf
            ];
          };
          "hsc3-lucier" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-lz-bf" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-m21360" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-metal-plate" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-microhelix" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-modal-space-buf" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-modal-space" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-moto-rev" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-mouse" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-mouse-clatter-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-mridangam" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-mridangam-dr" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-music-box" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-narrow-band-filtered-crackle-noise" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-nharm-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-nharm-p" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-noise-burst-sweep" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-noise-modulated-sawtooths" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-noise-modulated-sines" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-nokia" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-non-real-time" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.process
            ];
          };
          "hsc3-nv-ml-2014-06-03" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-1" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-2013-01-11" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-nv-tw-2013-12-04" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-2014-02-21" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-2014-06-03" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-41" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-nv-tw-54" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-nx102" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-one-line" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-oscillator-cluster-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-overlap-add" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pattern-buffer-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pebble-beach" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-phase-modulation" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pkt-00" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-pkt-07" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          "hsc3-pkt-26" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-pkt-28" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-plucked-strings-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-police-state" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-police-state-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-pond-life" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pond-life-ha" = {
            depends  = [
              hsPkgs.hashable
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pond-life-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-proxy-mixer" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-proxy-mixer-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pulsing-bottles" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pulsing-bottles-m" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-pwm-crossfade" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rails" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-rain-thunder" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-random-panning-sines" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-random-panning-sines-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-random-pulsations" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-random-sine-waves" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-random-sine-waves-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-random-sine-waves-she" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-record-scratcher" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-red-frik-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-reset" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-resonant-dust" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-resonant-dust-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-resonators-harmonic-series" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-reso-pulse" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-reverberated-noise-bursts" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-reverberated-sine-percussion-hp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-reverberated-sine-percussion-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-ring-modulated-klank" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-ring-modulate-input" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rm-octaver" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rzblp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rzblp-hp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rzblp-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-rzblp-u" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-unsafe
            ];
          };
          "hsc3-sam-i-am" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.MonadRandom
            ];
          };
          "hsc3-sample-and-hold-liquidities" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-saucer-base" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-sawed-cymbals" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-s-chirp" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-scratchy" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-scratchy-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-scritto" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-scritto-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-seqr" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-seqr-n" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-shepard-tones" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-shifting-pulses-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-sidereal-time" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-sidereal-time-hp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-sinusdeklinationen" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.split
            ];
          };
          "hsc3-slow-beating-harmonic-sines" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.MonadRandom
            ];
          };
          "hsc3-slow-beating-sines" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.MonadRandom
            ];
          };
          "hsc3-snare-909" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-sosc-lp-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-spe-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-spe-p" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-sprinkler" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-sprinkler-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-string-wander-cluster" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          "hsc3-strummable-guitar" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-sweepy-noise" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-swept-resonant-noise" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-synthetic-piano-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-tank" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-tank-hp" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-tank-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-tapping-tools" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-tgb-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-tgrn" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-tgr-rpr-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-thb" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmt
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-theremin" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-three-cpsw" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-three-cpsw-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-thx" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.random
            ];
          };
          "hsc3-tipnso" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-train" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-tremulate" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-tremulate-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-tremulate-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-trkl-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-trmlo" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-trmlo-u" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsc3-unsafe
            ];
          };
          "hsc3-tr-out-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          "hsc3-tsort" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-tw-463992770596577280" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-tw-98315246548172800" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-uplink" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-uplink-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-urandom" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-vla-addtn" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-vla-addtn-sharc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsharc
            ];
          };
          "hsc3-vlc-distrtn-m" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-voscil" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-voscil-u" = {
            depends  = [
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsc3-unsafe
            ];
          };
          "hsc3-waveset" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-sf
              hsPkgs.random
            ];
          };
          "hsc3-what-was-i-thinking-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-why-supercollider" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          "hsc3-wial-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-wind-metals-m" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-xy-interference" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-xy-interference-m" = {
            depends  = [ hsPkgs.hsc3 ];
          };
          "hsc3-zizle" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          "hsc3-zizle-hp" = {
            depends  = [
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
        };
      };
    }