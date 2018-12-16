{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
      buildsynthesizer = false;
      debug = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "alsa-pcm";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>, Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (PCM audio).";
      description = "This package provides access to ALSA realtime audio signal input and output.\nFor MIDI support see alsa-seq.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.alsa-core)
          (hsPkgs.storable-record)
          (hsPkgs.sample-frame)
          (hsPkgs.array)
          (hsPkgs.semigroups)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.alsa)
        ];
      };
      exes = {
        "alsa-minisynth" = {
          depends = pkgs.lib.optionals (flags.buildsynthesizer) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.alsa-seq)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.storablevector)
            (hsPkgs.base)
          ];
        };
        "alsa-sine" = {
          depends = pkgs.lib.optionals (flags.buildsynthesizer) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.storablevector)
            (hsPkgs.base)
          ];
        };
        "alsa-duplex" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
          ];
        };
        "alsa-play" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
          ];
        };
        "alsa-record" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
          ];
        };
        "alsa-volume-meter" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
          ];
        };
      };
    };
  }