{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "alsa-midi";
          version = "0.4.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Soenke Hahn";
        homepage = "http://www.haskell.org/haskellwiki/ALSA";
        url = "http://code.haskell.org/~thielema/alsa-midi/";
        synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
        description = "Bindings for the ALSA sequencer API (MIDI stuff)\n\nThere are now the packages @alsa-pcm@ and @alsa-seq@\nthat aim at a more complete interface to ALSA.\nThus we will no longer maintain this package.\n\nSee \"Sound.ALSA.Sequencer.Play\" for how to play Haskore songs in realtime via ALSA.";
        buildType = "Simple";
      };
      components = {
        "alsa-midi" = {
          depends  = [
            hsPkgs.midi
            hsPkgs.event-list
            hsPkgs.non-negative
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.asound ];
        };
        exes = {
          "playnote" = {
            libs = [ pkgs.asound ];
          };
          "playmidi" = {
            libs = [ pkgs.asound ];
          };
          "mididump" = {
            libs = [ pkgs.asound ];
          };
        };
      };
    }