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
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "alsa-pcm";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (PCM audio).";
      description = "This package provides access to ALSA realtime audio signal input and output.\nFor MIDI support see alsa-seq.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.alsa-core)
          (hsPkgs.sample-frame)
          (hsPkgs.array)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
        ];
        libs = [ (pkgs."asound") ];
      };
      exes = {
        "alsa-duplex" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-play" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-record" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
        "alsa-volume-meter" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
          ];
        };
      };
    };
  }