{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "zmidi-core";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Read and write MIDI files.";
        description = "\nMinimalist library to read and write MIDI files, with\ndependencies only on ByteString and Data.Binary.\n\nChangelog:\n\nv0.5.0 to v0.6.0:\n\n* Extended the parser and changed the syntax tree to interpret\nMIDI Running Status.\n\n* Added a module @ZMidi.Core.Canonical@ to translate MidiFiles\nto a canonical form where any shorthand NoteOff introduced by\nRunning Status is expanded to regular NoteOn and NoteOff\nevents (with Running Status set, MidiFiles can signal NoteOff\nevents as another NoteOn with 0 channel velocity).\n\n* Added a hack to the pretty printer to stop printing ASCII\nchars greater than 164 causing an error when printing to\nstdout.\n\nv0.4.0 to v0.5.0:\n\n* Changed order of @MidiVoiceEvent@ constructors so the Ord\ninstance follows the order of the /tag/ in the MIDI binary\nrepresentation.\n\n* Changed @MidiSysCommonEvent@ to have different constructors\nfor unidentified F4 anf F5 events.\n\n* Changed @MidiSysRealTimeEvent@ to have different constructors\nfor unidentified F9 and FD events.\n\n* Added more Haddock docs.\n\n* Various internal code changes.\n\nv0.3.0 to v0.4.0:\n\n* Added new constructors to @MidiMetaEvent@ for MidiPort and\nMetaOther. MetaOther recognizes otherwise unrecognized events\nimproving the robustness of the parser. Similarly a new\n/other/ constructor has been added to @MidiScaleType@ to\navoid parse errors.\n\nv0.2.1 to v0.3.0:\n\n* Revised naming of the MIDI data types. All data types now have\nthe prefix Midi (previously only MidiFile followed this scheme).\nThe rationale for this is client software, that might want a\nhigher-level representation, is then free to use the more\ngeneric names Track, Message, etc.\n\n* @DeltaTime@ made a newtype wrapper rather than a type synonym.\n\n* Renamed the pretty print functions @track@ to @printMidiTrack@\nand @header@ to @printMidiHeader@.\n\n* Moved internal dataypes (SplitByte, Varlen) into a private\nmodule.\n\nv0.2.0 to v0.2.1:\n\n* Added Show class constraints to various type signatures to\naccommodate changes to Num superclass hierarchy in GHC 7.4.\nThanks to Remy Moueza for the patches.\n\nv0.1.0 to v0.2.0:\n\n* Added a top-level /shim/ module to import all the exposed\nmodules. Added a version number module\n\n";
        buildType = "Simple";
      };
      components = {
        zmidi-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }