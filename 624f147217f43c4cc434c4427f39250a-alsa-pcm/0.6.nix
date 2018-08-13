{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
      buildsynthesizer = false;
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "alsa-pcm";
        version = "0.6";
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
      "alsa-pcm" = {
        depends  = [
          (hsPkgs.alsa-core)
          (hsPkgs.storable-record)
          (hsPkgs.sample-frame)
          (hsPkgs.array)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.alsa)
        ];
      };
      exes = {
        "alsa-minisynth" = {
          depends  = pkgs.lib.optionals (_flags.buildsynthesizer) [
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.storablevector)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-sine" = {
          depends  = pkgs.lib.optionals (_flags.buildsynthesizer) [
            (hsPkgs.alsa-core)
            (hsPkgs.storablevector)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-duplex" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.alsa-core)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-play" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.alsa-core)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-record" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.alsa-core)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-volume-meter" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.alsa-core)
            (hsPkgs.storable-record)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
      };
    };
  }