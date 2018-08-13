{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
      modifyfilter = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "alsa-seq";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Dylan Simon, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>,\nDylan Simon <dylan@dylex.net>,\nBjorn Bringert <bjorn@bringert.net>,\nIavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (MIDI sequencer).";
      description = "This package provides access to ALSA sequencer (MIDI support).\nFor audio support see alsa-pcm.\nIncluded are some simple example programs.\nFor more example programs including a GUI, see the alsa-gui programs.";
      buildType = "Simple";
    };
    components = {
      "alsa-seq" = {
        depends  = [
          (hsPkgs.alsa-core)
          (hsPkgs.enumset)
          (hsPkgs.transformers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.poll)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.alsa)
        ];
      };
      exes = {
        "alsa-seq-dump" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-send-note" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-broadcast" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-list-ports" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-melody" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-list-subscribers" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-beat" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alsa-seq-sysex" = {
          depends  = [
            (hsPkgs.alsa-core)
            (hsPkgs.enumset)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }