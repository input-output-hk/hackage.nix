{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "synthesizer-alsa";
          version = "0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "http://darcs.haskell.org/synthesizer-alsa/";
        synopsis = "Control synthesizer effects via ALSA/MIDI";
        description = "This package allows to read MIDI events\nand to convert them to control signals\nthat can be used for audio effects.\nAs demonstration there is a keyboard controlled music synthesizer.\nHowever, latency increases over time such that the synthesizer becomes unusable.\nI currently do not know how to solve this problem.";
        buildType = "Simple";
      };
      components = {
        "synthesizer-alsa" = {
          depends  = [
            hsPkgs.synthesizer
            hsPkgs.sox
            hsPkgs.alsa
            hsPkgs.storablevector
            hsPkgs.numeric-prelude
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.transformers
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.old-time
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "realtimesynth" = {};
        };
      };
    }