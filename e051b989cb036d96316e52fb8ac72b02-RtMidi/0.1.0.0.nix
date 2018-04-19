{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      alsa = false;
      jack = false;
      core = false;
      mm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "RtMidi";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kohlrabi@kohlra.biz";
        author = "kohlrabi";
        homepage = "https://github.com/riottracker/RtMidi";
        url = "";
        synopsis = "";
        description = "Haskell wrapper for RtMidi, the lightweight, cross-platform MIDI I/O library.";
        buildType = "Simple";
      };
      components = {
        RtMidi = {
          depends  = [ hsPkgs.base ];
          libs = (([
            pkgs."stdc++"
          ] ++ pkgs.lib.optionals _flags.alsa [
            pkgs.asound
            pkgs.pthread
          ]) ++ pkgs.lib.optional _flags.jack pkgs.jack) ++ pkgs.lib.optionals _flags.core [
            pkgs.CoreMIDI
            pkgs.CoreAudio
            pkgs.CoreFoundation
          ];
        };
      };
    }