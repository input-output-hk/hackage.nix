{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-graphs";
          version = "0.12";
        };
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
          hsc3-1-1Ni = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-1-4Q6 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-1-4QM = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-1-4QN = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-1-4Qx = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-1-Td = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-acid-otophilia = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.random
            ];
          };
          hsc3-adso = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-after-goeyvaerts = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.containers
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          hsc3-aleatoric-quartet-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-alien-froggies = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-alien-meadow = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-ambient1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-analog-bubbles = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-arpeggio = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-babbling-brook-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-birds-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-bit-reduction = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-bitwise = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-black-atlantic-currents = {
            depends  = [
              hsPkgs.base
              hsPkgs.primes
              hsPkgs.hsc3
              hsPkgs.random
              hsPkgs.random-shuffle
            ];
          };
          hsc3-bohlen-pierce-140 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-bottle-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-bowed-string-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-bs-070705 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-buffer-display = {
            depends  = [
              hsPkgs.base
              hsPkgs.hcg-minus
              hsPkgs.cmath
              hsPkgs.cairo
              hsPkgs.hsc3
              hsPkgs.hsc3-cairo
            ];
          };
          hsc3-ccomb = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-cds-070701 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-chain-saw = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-choip = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-chrd-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-chrd-t = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-clustered-sines = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-comb-delay-sweeps = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          hsc3-contamination-zone = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-coolant = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-cricket-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-crotale = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-crotale-sine = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-cut-outs = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-cymbalism-accelerando = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-cymbalism-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-dark-sea-horns = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-data-space = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-deep-sea = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-deep-trip = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-default = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-demanding-studies = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-dial-history = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-diffraction = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-discretion = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-discretion-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-doppler = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-drummer = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-early-space-music-lp-side-two = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
              hsPkgs.random
            ];
          };
          hsc3-eggcrate = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-eggcrate-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-e-lamell = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-e-lamell-p = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-ellipse-based-synthesis = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-2012-04-19 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0011 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0014 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0020 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0028 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0030 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0033 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0045 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0049 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0051 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0077 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-f0-tw0084 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-fb-090531 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-fbl-fbf = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-feedr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-f-lets = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-fm-iter = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-fm-kltr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-fm-kltr-p = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-for-ann = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-forest-sounds = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-fwalk = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-half-life = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-hansm = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-harmonic-swimming = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-harmonic-swimming-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-harmonic-tumbling = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-h-chatter = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-hell-is-busy = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-hh-808 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-implosion = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-insects = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-jl-1-Z = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-k2ws = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-kabelscahden = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-karplus-strong = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-klink = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-k-ppr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-k-ppr-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-laser-bubble = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-lfo-modulation = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-lf-pulses = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-lg-timed = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-lin-sosc = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-lso-061101 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hps
              hsPkgs.hls
              hsPkgs.hsc3-sf
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
          hsc3-lucier = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-m21360 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-microhelix = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-modal-space = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-moto-rev = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-mouse-clatter-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-mridangam = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-music-box = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-nharm = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-nharm-p = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-noise-burst-sweep = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-noise-modulated-sines = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-nokia = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-non-real-time = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.process
            ];
          };
          hsc3-nv-tw-1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-nv-tw-41 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-nv-tw-54 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-nx102 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-one-line = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-oscillator-cluster = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-overlap-add = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-pattern-buffer = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-pebble-beach = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-pkt-26 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-pkt-28 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-plucked-strings = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-police-state = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-pond-life = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-proxy-mixer = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-proxy-mixer-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-pulsing-bottles = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-pulsing-bottles-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-pwm-crossfade = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-rails = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-rain-thunder = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-random-panning-sines = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-random-panning-sines-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-random-pulsations = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-random-sine-waves = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-record-scratcher = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-red-frik = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-reset = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-resonant-dust = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-reverberated-sine-percussion = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-ring-modulated-klank = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-rm-octaver = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-rzblp = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-rzblp-u = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-unsafe
            ];
          };
          hsc3-sam-i-am = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-sample-and-hold-liquidities = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-saucer-base = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-sawed-cymbals = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-s-chirp = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-scratchy = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-scratchy-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-scritto = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-scritto-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-seqr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-shepard-tones = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-shifting-pulses = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-sidereal-time = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-sinusdeklinationen = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-slow-beating-harmonic-sines = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-slow-beating-sines = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-snare-909 = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-sosc-lp = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-spe-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-spe-p = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-sprinkler = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-sprinkler-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-string-wander-cluster = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.random
            ];
          };
          hsc3-strummable-guitar = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-sweepy-noise = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-synthetic-piano-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-tank = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-tank-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-tgb = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-tgrn = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-tgr-rpr = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-thb = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmt
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hosc
            ];
          };
          hsc3-theremin = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-three-cpsw = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-thx = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.random
            ];
          };
          hsc3-tipnso = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-train = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-tremulate = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-tremulate-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-trkl = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-trmlo = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-unsafe
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-tr-out = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
            ];
          };
          hsc3-tsort = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-uplink = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-urandom = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.base
            ];
          };
          hsc3-vla-addtn = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-vla-addtn-sharc = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsharc
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-vlc-distrtn = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
            ];
          };
          hsc3-voscil = {
            depends  = [
              hsPkgs.base
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-lang
              hsPkgs.hsc3-unsafe
            ];
          };
          hsc3-waveset = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.base
              hsPkgs.hsc3-sf
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.random
            ];
          };
          hsc3-what-was-i-thinking = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-why-supercollider = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
              hsPkgs.sc3-rdu
            ];
          };
          hsc3-wial = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-wind-metals-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3-lang
              hsPkgs.hsc3
            ];
          };
          hsc3-xy-interference = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
          hsc3-xy-interference-m = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsc3
            ];
          };
        };
      };
    }