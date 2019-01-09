{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; buildsynthesizer = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-pcm"; version = "0.5.0.1"; };
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
          (hsPkgs.sample-frame)
          (hsPkgs.array)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
          ];
        pkgconfig = [ (pkgconfPkgs.alsa) ];
        };
      exes = {
        "alsa-minisynth" = {
          depends = [
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.storablevector)
            (hsPkgs.sample-frame)
            (hsPkgs.base)
            ];
          };
        "alsa-duplex" = {
          depends = [ (hsPkgs.alsa-core) (hsPkgs.sample-frame) (hsPkgs.base) ];
          };
        "alsa-play" = {
          depends = [ (hsPkgs.alsa-core) (hsPkgs.sample-frame) (hsPkgs.base) ];
          };
        "alsa-record" = {
          depends = [ (hsPkgs.alsa-core) (hsPkgs.sample-frame) (hsPkgs.base) ];
          };
        "alsa-volume-meter" = {
          depends = [ (hsPkgs.alsa-core) (hsPkgs.sample-frame) (hsPkgs.base) ];
          };
        };
      };
    }