{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsc3-graphs";
        version = "0.8";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2010";
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
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.random)
          ];
        };
        "hsc3-aleatoric-quartet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-analog-bubbles" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-babbling-brook" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-birds" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-bit-reduction" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-bottle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-bowed-string" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-ccomb" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-chain-saw" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-chrd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-cricket" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-crotale" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-cut-outs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-cymbalism" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-deep-sea" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-default" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-demanding-studies" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-dial-history" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-diffraction" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-discretion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-drummer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-eggcrate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-e-lamell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-fbl-fbf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-feedr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-f-lets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-fm-iter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-fm-kltr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-forest-sounds" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-fwalk" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-half-life" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-harmonic-swimming" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-harmonic-tumbling" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-h-chatter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-hh-808" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-implosion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-insects" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-karplus-strong" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-klink" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-k-ppr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-lfo-modulation" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-lf-pulses" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-lg-timed" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-lin-sosc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-lucier" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-modal-space" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-moto-rev" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-mouse-clatter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-nharm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-noise-burst-sweep" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-non-real-time" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.process)
          ];
        };
        "hsc3-one-line" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-oscillator-cluster" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-overlap-add" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-pattern-buffer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-plucked-strings" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-police-state" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-pulsing-bottles" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-record-scratcher" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-red-frik" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-reset" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-reverberated-sine-percussion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-rm-octaver" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-sample-and-hold-liquidities" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-s-chirp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-scratchy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-scratchy-m" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-scritto" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-shepard-tones" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-shifting-pulses" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-snare-909" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-sosc-lp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-spe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-sprinkler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-sprinkler-m" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-strummable-guitar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-sweepy-noise" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-synthetic-piano" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tank" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tgb" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tgrn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tgr-rpr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-theremin" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-three-cpsw" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-thx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tipnso" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-train" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-trkl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tr-out" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-tsort" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-vlc-distrtn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-waveset" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-sf)
            (hsPkgs.random)
          ];
        };
        "hsc3-what-was-i-thinking" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-wial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-wind-metals" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-xy-interference" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
        "hsc3-xy-interference-m" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsc3)
          ];
        };
      };
    };
  }