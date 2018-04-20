{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "alsa-midi";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Soenke Hahn";
        homepage = "http://open-projects.net/~shahn/index.php?seite=code";
        url = "";
        synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
        description = "Bindings for the ALSA sequencer API (MIDI stuff)\nSince there is also\n<http://code.haskell.org/alsa/>\nwhich aims at a more complete interface to ALSA\nwe will no longer maintain this one.";
        buildType = "Simple";
      };
      components = {
        alsa-midi = {
          depends  = [
            hsPkgs.base
            hsPkgs.midi
            hsPkgs.event-list
            hsPkgs.non-negative
          ];
          libs = [ pkgs.asound ];
        };
        exes = {
          playnote = {
            depends  = [
              hsPkgs.base
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.non-negative
            ];
            libs = [ pkgs.asound ];
          };
          playmidi = {
            depends  = [
              hsPkgs.base
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.non-negative
            ];
            libs = [ pkgs.asound ];
          };
          mididump = {
            depends  = [
              hsPkgs.base
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.non-negative
            ];
            libs = [ pkgs.asound ];
          };
        };
      };
    }