{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "midi-util";
          version = "0.1.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "miketolly@gmail.com";
        author = "Michael Tolly";
        homepage = "http://github.com/mtolly/midi-util";
        url = "";
        synopsis = "Utility functions for processing MIDI files";
        description = "Common high-level tasks when processing MIDI files.\n\n* Use tempos to translate between musical time (beats) and real time (seconds).\n\n* Use time signatures to reference positions using measures instead of just beats.\n\n* Find or change the names of MIDI tracks.";
        buildType = "Simple";
      };
      components = {
        "midi-util" = {
          depends  = [
            hsPkgs.base
            hsPkgs.midi
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.containers
          ];
        };
      };
    }